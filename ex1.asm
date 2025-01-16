;first exercise in assembly. This is a comment. The syntax seems decent.


;Below is the entrypoint to a basic asm program


; Below, the "global" keyword is used to make the identifier visible to the linker.
; "_start" is the IDENTIFIER in question.
; The identifier followed by a semicolon as visible on line 11 is called a LABEL.
global _start
_start:
    mov eax, 1   ;register aex is assigned the value 1 ("1" is the value for "Exit")
    mov ebx, 42  ;register ebx is assigned the value 42
    sub ebx, 29  ;register ebx has its value subtracted by 29. The output is therefore 13.
    int 0x80     ;An interrupt with a value of 80, a value which is used for system calls.