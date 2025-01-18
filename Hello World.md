```
global _start                   ;Identifier global per start
section .data                   ;nisja e sektorit ku ruajme te dhenat
  msg db "Hello World", 0x0a    ;Afishim i nje mesazhi. "db" perdoret per strings dhe peshon 1 byte. "0x0a" perdoret per te afishuar ne rresht te ri. (Si /n)
  len equ $ - msg               ;Deklarim i lengthit te stringut duke gjetur diferencen midis locationit ne fillim dhe ne fund te stringut te mesazhit
  
section .text                   ;Nga sectioni text e tutje ndodhet kodi jone.
_start:                         ;Labeli per identifierin start
  mov eax,4                     ;System call per "system_write".
  mov ebx,1                     ;System call per "stdout file descriptor".   Kjo dhe "system_write" jane ME DETYRIM per cdo afishim teksti
  mov ecx,msg                   ;Bytes te cilat do bejme write
  mov edx,len                   ;NUMRI i bytes te cilat do bejme write
  
  int 0x80                      ;System call interrupt
  mov eax,1                     ;sys_exit system call
  mov ebx,0                     ;Exit status 0 (success)
  int 0x80
  
  
```


