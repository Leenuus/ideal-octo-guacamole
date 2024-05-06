## Quick Takes

### Calling Conventions

Register order:

Dina Silk Dress Cheap $89

### Return Value

- Integers are returned in rax or rdx:rax
- floating point values are returned in xmm0 or xmm1:xmm0


## questions

### Mov
Difference between
```nasm
mov rdi, "*"
```
and
```nasm
mov byte [rdi], "*"
```

### PIE, position independent executable

[workaround](https://stackoverflow.com/questions/36007975/compile-error-relocation-r-x86-64-pc32-against-undefined-symbol)

instead of
```nasm
call puts
```

use
```nasm
call     puts WRT ..plt
```


## References

- [a lot of intro practices from this amazing post](https://cs.lmu.edu/~ray/notes/nasmtutorial/)
- [nasm online docs](https://www.nasm.us/xdoc/2.16.03/html/nasmdoc0.html)
