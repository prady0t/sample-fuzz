# Use the OSS-Fuzz base image for Go projects
FROM gcr.io/oss-fuzz-base/base-builder-go
RUN git clone --depth 1 https://github.com/prady0t/sample-fuzz
WORKDIR sample_fuzz
COPY build.sh $SRC/