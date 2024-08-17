printf "package transform\nimport _ \"github.com/AdamKorcz/go-118-fuzz-build/testing\"\n" > $SRC/sample-fuzz/register.go
go mod tidy
compile_native_go_fuzzer github.com/prady0t/sample-fuzz/fuzz FuzzIsValidEmail FuzzIsValidEmail
ls