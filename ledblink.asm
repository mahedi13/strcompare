#fasm#

org  100h  

mov al,10000000b
out 1eh,al

mov al,00000000b
out 1ah,al
mov al,10000000b
out 1ch,al
mov cx,0009h 
mov bx,0000h
x:
loop x

next:
ror al,01h
out 1ch,al 
mov cx,0009h
inc bx
y:
loop y
cmp bx,0bh
jbe next

ret



