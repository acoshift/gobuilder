FROM gcr.io/cloud-builders/go

RUN apk --no-cache add cmake

RUN git clone https://github.com/google/brotli && cd brotli && cmake . && make install && cd .. && rm -rf brotli
