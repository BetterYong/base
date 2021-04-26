#include <fstream>
#include <string>
#include <iostream>
#include <errno.h>
#include "pid.h"
int main(){
	std::string pid_pathname="test.pid";
	if(0==octopus_write_pid(pid_pathname.c_str())){
      //  DLOG(ERROR)<<"write pid failed";
        octopus_remove_pid(pid_pathname.c_str());
        return -1;
    }

	int pid=octopus_read_pid(pid_pathname.c_str());	
	std::cout<<"pid  is :"<<pid<<std::endl;
	return 0;
}
