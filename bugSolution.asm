```assembly
mov ax, bx
add ax, cx
mov dx, 0 ; Clear DX for proper division
xor dx, dx 
div bx ; Divide AX:DX by BX (10)
mov cx, dx ; Store the remainder (tens)
mov ax, ax ; Move the quotient
xor dx, dx
div bx ; Divide AX:DX by BX (10) again
mov dx, ax ; Store the remainder (units)
mov ax, cx ; Move the tens to AX
mov cx, dx ; Move the units to CX
```