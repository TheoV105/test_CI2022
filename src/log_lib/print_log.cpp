

#include <iostream>
#include<FirstOrganizedCMakeConfig.h>
#include<log_lib/print_log.h>

void hello_world() {
	std::cout << "Hello World!\n" << std::endl;
}

void print_version() {
	std::cout << "project version is "	<< FirstOrganizedCMake_VERSION_MAJOR << "." << FirstOrganizedCMake_VERSION_MINOR << std::endl;
}