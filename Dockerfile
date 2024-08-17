FROM gcr.io/oss-fuzz-base/base-builder-go
ENV FUZZING_LANGUAGE=go
RUN git clone https://github.com/prady0t/sample-fuzz
WORKDIR sample-fuzz
COPY build.sh $SRC/
