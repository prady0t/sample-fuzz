# LFX-pretask-Fuzz-Testing


```
git clone https://github.com/prady0t/sample-fuzz
cd sample-fuzz
docker build -t sample-fuzz .
docker run -it sample-fuzz
```

(You can see the fuzzer was successfully compiled)

### About each file : 

This repo contains three things : 
- Sample function to check for valid email : `fuzz/email_check.go`
- Fuzzer to check for the above mentioned function : `fuzz/fuzz_test.go`
- Files needed to integrate with oss-fuzz : `Dockerfile`, `build.sh`, `project.yaml`





