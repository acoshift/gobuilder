FROM gcr.io/cloud-builders/go

# RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk --no-cache add cmake

RUN git clone https://github.com/google/brotli && cd brotli && cmake . && make install && cd .. && rm -rf brotli
# RUN cp -r brotli/c/include/brotli /usr/include/
