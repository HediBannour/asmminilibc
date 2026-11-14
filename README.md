# ASM minilibc

A mini C library rewritten in x86-64 assembly (NASM), built as the shared library `libasm.so`.

- **Team:** solo project
- **My part:** nine libc functions in assembly: `strlen`, `strchr`, `strrchr`, `memset`, `memcpy`, `strcmp`, `strncmp`, `strcasecmp`, `strcspn`.

## Build and use

Requirements: nasm, ld, make (Linux x86-64).

```sh
make                       # produces libasm.so
LD_PRELOAD=./libasm.so ./your_program
```

---

School project at Epitech (France). More projects: [hedibannour.com](https://hedibannour.com/#projects)
