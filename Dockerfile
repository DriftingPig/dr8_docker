FROM FROM legacysurvey/legacypipe:nersc-dr8.3.0

ADD . /src

#openmp
RUN cd /src && cd openmpi-1.10.7 && ./configure && make && make install 
Run cd / && mkdir build
RUN cd /build && wget https://www.mpich.org/static/downloads/3.2/mpich-3.2.tar.gz \
  && tar xvzf mpich-3.2.tar.gz && cd /build/mpich-3.2 \
  && ./configure && make -j4 && make install && make clean && rm /build/mpich-3.2.tar.gz

RUN cd /build && wget https://bitbucket.org/mpi4py/mpi4py/downloads/mpi4py-3.0.0.tar.gz \
  && tar xvzf mpi4py-3.0.0.tar.gz

RUN cd /build/mpi4py-3.0.0 && python setup.py build && python setup.py install && rm -rf /build/

RUN /sbin/ldconfig
RUN apt-get update && apt-get install libc6

#ENV
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
ENV LIBRARY_PATH=$LIBRARY_PATH:/usr/local/lib/
#pip
RUN cd /src && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
#h5py
RUN pip install h5py 
#pandas
RUN pip install pandas
#fftw
RUN cd /src && cd fftw-3.3.8 && ./configure --enable-shared && make && make install  
#eigen
ENV EIGEN_DIR=/src/eigen-eigen-323c052e1731/Eigen
#cmake
RUN cd /src/cmake-3.15.2 && ./bootstrap && make && make install
#pytest
RUN /usr/bin/python3.5 -m pip install pytest
#pybind11
RUN cd /src/pybind11 && mkdir build && cd build && cmake .. && make check -j 4
RUN pip install -U pybind11
#galsim
RUN cd / && pip install galsim 
#not sure if this is necessary now
RUN apt-get update && apt-get install libc6

