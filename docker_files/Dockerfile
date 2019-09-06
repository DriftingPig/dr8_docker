FROM legacysurvey/legacypipe:nersc-dr8.3.0

ADD . /src

RUN cd /src && cd openmpi-1.10.7 && ./configure && make && make install 

#RUN mpirun

#RUN cd /bin && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py

#RUN curl -O https://bitbucket.org/mpi4py/mpi4py/downloads/mpi4py-X.Y.tar.gz && tar -zxf mpi4py-X.Y.tar.gz && cd mpi4py-X.Y && python setup.py build 

#RUN pip install h5py 

#RUN pip install galsim 

#RUN pip install pandas
