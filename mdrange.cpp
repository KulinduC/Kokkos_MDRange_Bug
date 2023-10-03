#include <Kokkos_Core.hpp>
#include <Kokkos_Random.hpp>
#include <vector>
#include <iostream>
#include "mdrange.h"
#include <pybind11/pybind11.h>

using space_t = Kokkos::HostSpace;

// Execution Space

// using ExecSpace = Kokkos::Serial;
// using ExecSpace = Kokkos::Threads;
// using ExecSpace = Kokkos::OpenMP;
using ExecSpace = Kokkos::Cuda;

// Device memory space
// using MemSpace = Kokkos::HostSpace;
using MemSpace = Kokkos::CudaSpace;
// using MemSpace = Kokkos::CudaUVMSpace;
// using MemSpace = Kokkos::OpenMPTargetSpace;

// Layout
// using Layout = Kokkos::LayoutLeft;
// using Layout = Kokkos::LayoutRight;


void range_setup(int i, int j, int k, int z) { 
  Kokkos::initialize();
  using policy = Kokkos::MDRangePolicy<ExecSpace, Kokkos::Rank<2>>;
  auto p = policy{{i,j}, {k,z}};
  auto props = Kokkos::Impl::get_tile_size_properties(Kokkos::Cuda());
  std::cout << props.max_threads << std::endl;
  Kokkos::finalize();
}


PYBIND11_MODULE(mathmult, m) {
  m.doc() = "MDRange Test";
  m.def("range_setup", &range_setup, "Tests MDRangePolicy");
}

