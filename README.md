# Compile Command


```
cat $(buck2 bxl toolchains//compile_command.bxl:gen_compile_command -- --platform tf_platform//:linux_x86_64 --filter root//... --filter tf//... ) > compile_commands.json
```

