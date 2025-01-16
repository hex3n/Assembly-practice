; This exercise's whole purpose is to print Hello World. Horrifyingly long.

global _start
section .data
    msg db "Hello World", 0x0a  ;Think of "0x0a" as the Newline (/n) in C/C++.
    len equ $ - msg ; Determines the length of the string by finding the difference between
                    ; the location at the beginning of the string and the one at the end of it


section .text   ; this is where our code belongs
_start:
    mov eax,4       ;sys_write system call
    mov ebx,1       ;stdout file descriptor
    mov ecx,msg     ;bytes to write
    mov edx,len     ;number of bytes to write
    int 0x80        ;perform system call
    mov eax,1       ;sys_exit system call
    mov ebx,0       ;exit status is 0
    int 0x80