
if(NOT CMAKE_BUILD_TYPE)
	set(default_build_type "RelWithDebInfo")
	message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
	set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE STRING
	"Choose the type of build, the options are: Debug, Release, RelWithDebInfo and MinSizeRel."
	FORCE)
endif()


find_package(Kokkos CONFIG)
		include(FetchContent)
		FetchContent_Declare(
			Kokkos
			GIT_REPOSITORY https://github.com/kokkos/kokkos.git
			GIT_TAG 	4.1.00
			SOURCE_DIR	${Kokkos_COMMON_SOURCE_DIR}
		)
		FetchContent_MakeAvailable(Kokkos)

		#		FetchContent_Declare(
		#	pybind11
		#	GIT_REPOSITORY https://github.com/pybind/pybind11.git
		#	GIT_TAG 	v2.11.1
		#)
		#FetchContent_MakeAvailable(pybind11)
