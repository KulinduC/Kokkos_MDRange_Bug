cmake -S . -B build -DKokkos_ENABLE_CUDA=ON -DKokkos_ENABLE_CUDA_LAMBDA=ON -DKokkos_ARCH_TURING_75=ON -DKokkos_ENABLE_OPENMP=ON \
  -DPYTHON_EXECUTABLE=/opt/scorec/spack/v0181_2/install/linux-rhel7-x86_64/gcc-7.4.0/python-3.9.12-2f7nt6zciq7vwvu3yjx2n65bitsxaxi7/bin/python \
  -DKokkos_ENABLE_SERIAL=ON
