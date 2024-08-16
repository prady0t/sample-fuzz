printf "package transform\nimport _ \"github.com/AdamKorcz/go-118-fuzz-build/testing\"\n" > $SRC/sample-fuzz/reverse_fuzz_test.go
go mod tidy
compile_native_go_fuzzer sample_fuzz FuzzIsValidEmail FuzzIsValidEmail
