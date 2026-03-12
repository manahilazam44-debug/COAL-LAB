.model small
.stack 100h
.data
msg1 db 'Name: Manahil Azam',0dh,0ah,'$'
msg2 db 'SapID: 68662',0dh,0ah,'$'
msg3 db 'Batch: 2026',0dh,0ah,'$'
msg4 db 'Program: BSSE -Semester: 3$'

.code
main proc
  
    mov ax, @data
    mov ds, ax
    
    ;Print Full Name
    mov dx, OFFSET msg1
    mov ah, 09h
    int 21h
    
    ;Print SapID
    mov dx, OFFSET msg2
    mov ah, 09h
    int 21h
    
    ;Print Batch
    mov dx, OFFSET msg3
    mov ah, 09h
    int 21h
    
    ;Print Program and Semester
    mov dx, OFFSET msg4
    mov ah, 09h
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main