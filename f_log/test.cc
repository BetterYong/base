#include <fstream>
#include <string>
#define   NDEBUG
int main(){
	std::string log_pathname="arp_reply.log";
	#if !defined(NDEBUG)
        std::fstream f_log;
        f_log.open(log_pathname.c_str(),std::fstream::out);
    	#endif
	#if !defined(NDEBUG)
	for(int i=0;i<10;i++){
		f_log<<"SIOCGIFADDR "<<i<<std::endl;
	}  
        #endif
	return 0;
}
