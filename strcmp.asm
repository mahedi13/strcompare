
org 100h

str2 db "cse"
len2 equ ($-str2)
cld

mov cx,len2
mov ax,0000h  

str1 db "eee cse me ipe cse" 
len1 equ ($-str1) 
mov bx,len1
mov si, offset str1
mov di, offset str2

lop:
repe cmpsb
mov dx,len2
sub dx,cx
sub bx,dx
cmp cx,0000h
jz equal
mov di,offset str2
mov cx,len2
cmp bx,0000h
jnz lop
jmp finish
equal:
inc ax
mov di,offset str2
mov cx,len2
cmp bx,0000h
jnz lop
finish: nop
int 21h
ret




