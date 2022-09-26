
set(target_name loglib)
add_library(${target_name} STATIC "") # try SHARED for dynamic library

target_sources(${target_name}
    PRIVATE
		"${PROJECT_SOURCE_DIR}/src/log_lib/print_log.cpp"
    PRIVATE 
		"${PROJECT_SOURCE_DIR}/include/log_lib/print_log.h"
)
target_include_directories(${target_name} 
    PUBLIC   
        $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
	$<BUILD_INTERFACE:${PROJECT_BINARY_DIR}>
	$<INSTALL_INTERFACE:include>
)

export(TARGETS ${target_name}
        FILE ${target_name}_target.cmake
)
	
#install target
install(TARGETS ${target_name} EXPORT ${target_name} DESTINATION lib)

#install includes
install(DIRECTORY ${PROJECT_SOURCE_DIR}/include/
        DESTINATION include
)

#install export
install(EXPORT ${target_name} FILE loglib_target.cmake DESTINATION cmake)


#install configuration file 
install(FILES ${PROJECT_BINARY_DIR}/FirstOrganizedCMakeConfig.h DESTINATION include)

