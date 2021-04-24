#include <string>
#include "logging.h"
using namespace std;
/**
在CMakeLists.txt文件中显示这个下面这一行，则不显示log消息　　调试的时候，可以将这一行函数注释掉
add_definitions(-DNDEBUG)
*/
int main(){
	int n=10;
	for(int i=0;i<n;i++){
		//可以显示具体行数
		DLOG(ERROR)<<"error num "<<i<<std::endl;	
	}
	return 0;
}
