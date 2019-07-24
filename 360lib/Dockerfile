FROM ubuntu:18.04

LABEL title="360Lib" \
  author="José Juan Sánchez"

RUN apt-get update \
    && apt-get install -y subversion \
    && apt-get install -y git \
    && apt-get install -y cmake \
    && apt-get install -y build-essential \
    && cd /home \
    && svn checkout https://jvet.hhi.fraunhofer.de/svn/svn_360Lib/tags/360Lib-9.1/ \
    && git clone https://vcgit.hhi.fraunhofer.de/jvet/VVCSoftware_VTM.git \
    && cp -R 360Lib-9.1/ VVCSoftware_VTM/ \
    && cd VVCSoftware_VTM/ \
    && cp -R 360Lib-9.1/source/Lib/Lib360/ source/Lib/ \
    && cp -R 360Lib-9.1/source/Lib/AppEncHelper360/ source/Lib/ \
    && cp -R 360Lib-9.1/source/App/utils/360ConvertApp/ source/App/utils/ \
    && cp -R 360Lib-9.1/cfg-360Lib/ . \
    && mkdir build \
    && cd build/ \
    && cmake .. -DEXTENSION_360_VIDEO=1 -DCMAKE_BUILD_TYPE=Debug \
    && make

VOLUME /videos