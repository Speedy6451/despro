; hellow
; outputs "hello world" and exits after a prompt
; made with manual assembling in mind
; some debugging may not have been transfered to asm

hellow:
.db 16,19,12,25,24,11,
.db len(74)
.db 5,53,10,1,

ldr 0,1,len(74),1,1 ; copy to zero page

jp 1,21

ldr 3,1,420,2,1 ; clear display
ldr(ir) 0,+17,9,2,31 ; disp hello world
jrnz 0,23
.db (42) 0,0,1,22,25,0,33,25,28,22,14,
.db 26,28,15,29,29,0,43,27,43,

cmp(xr) =,1,-2,-5,1 ; input q?
jp 0,9 ; quit



jnc 0,39 ; recheck

16,19,12,25,24,11,
74,
5,53,10,1,

17,0,1,74,1,1,

53,1,1,

17,3,1,420,2,1,

18,0,15,11,2,1,
18,0,20,9,2,31,

54,0,23,

18,15,22,22,25,0,33,25,28,22,14, 
26,28,15,29,29,0,43,27,43,       

34,2,1,-2,-5,1,
49,0,9,
54,0,-9,0,0



18,15,22,22,25,33,74, 5,53,10,1, 17,0,1,74,1,1,53,1,21,17,3,1,420,2,1, 18,0,15,11,2,1, 18,0,20,9,2,31, 54,0,23, 18,15,22,22,25,0,33,25,28,22,14, 26,28,15,29,29,0,43,27,43,34,2,1,-2,-5,1, 49,0,9, 54,0,-9,0,0

