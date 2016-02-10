FROM ubuntu:16.04

RUN apt-get update && apt-get install -y unzip sudo python cmake

RUN mkdir /source
run mkdir /cocos
COPY download/* /cocos

WORKDIR /cocos
RUN unzip -q *.zip
RUN rm cocos2d-x-3.10.zip

RUN ./build/install-deps-linux.sh

ENTRYPOINT ["tools/cocos2d-console/bin/cocos"]
CMD ["--help"]
