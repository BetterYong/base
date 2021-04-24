#include <string>
#include <unistd.h>
#include <memory.h>
#include "ini.h"
#include "cmdline.h"
int main(int argc, char **argv){
	cmdline::parser a;
	a.add<std::string>("config", 'c', "config file", false, "arp_acl.conf");
	a.parse_check(argc, argv);
	std::string conf_pathname=a.get<std::string>("config");
	ini_t *config=ini_load(conf_pathname.c_str());
	const char *capture_if_str=ini_get(config,"service","capture_if");
	if(capture_if_str){
        std::string ifname=std::string(capture_if_str);
	std::cout<<"ifname :"<<ifname<<std::endl; 
	} 
	const char *section="dst-acl";
        const char *num_str=ini_get(config,section,"num");
	if(num_str){
		 int n=std::stoi(num_str);
		 std::cout<<"n :"<<n<<std::endl;
		 for(int i=0;i<n;i++){
                	std::string key="ip"+std::to_string(i+1);
                	const char *ip_str=ini_get(config,section,key.c_str());
			std::cout<<"ip_str"<<ip_str<<std::endl;	
		}		
	}
	return 0;
}
