FROM gcr.io/oss-fuzz-base/base-builder-go

# Set the working directory to $SRC
WORKDIR $SRC

# Copy the entire project into the container's $SRC directory
COPY . $SRC/sample-fuzz

# Change to the package directory
WORKDIR $SRC/sample-fuzz

# Download Go modules (if using Go modules)
RUN go mod download

# Build the fuzzers
RUN compile_go_fuzzer sample_fuzz FuzzIsValidEmail fuzz_reverse
