@ Diagnostic module: overwrites raw sectors on disposable IDE drive 5.
@ Keep the claimed buffer for inspection; reset the test guest afterwards.
.syntax unified
.arch armv3
.arm
.global _start
_start:
.word 0,init-_start,0,0,title-_start,help-_start,0,0,0,0,0,0,0
title: .asciz "BigIDETest"
help: .asciz "BigIDETest 0.01"
.balign 4
init:
 stmfd sp!,{r0-r12,lr}
 adr r10,results
 mov r0,#0
 str r0,[r10,#8]
 str r0,[r10,#12]
 mov r0,#6
 ldr r3,=8192
 swi 0x2001e
 bvs failed
 mov r9,r2
 str r9,[r10,#20]
 mov r8,#0
 adr r11,sectors
next:
 ldr r7,[r11],#4
 cmn r7,#1
 beq phase_done
 mov r0,#0
fill:
 eor r1,r7,r0
 strb r1,[r9,r0]
 add r0,r0,#1
 cmp r0,#2048
 bne fill
 mov r6,#2
 bl discop
 bvs failed
 mov r0,#0
 mov r1,#0
clear:
 strb r1,[r9,r0]
 add r0,r0,#1
 cmp r0,#2048
 bne clear
 mov r6,#1
 bl discop
 bvs failed
 mov r0,#0
check:
 eor r1,r7,r0
 ldrb r2,[r9,r0]
 and r1,r1,#255
 cmp r1,r2
 bne mismatch
 add r0,r0,#1
 cmp r0,#2048
 bne check
 ldr r0,[r10,#8]
 add r0,r0,#1
 str r0,[r10,#8]
 b next
mismatch:
 ldr r0,=0xdead
 b failed
phase_done:
 add r8,r8,#1
 cmp r8,#4
 beq done
 add r9,r9,#1
 adr r11,sectors
 b next
done:
 ldr r0,=0x600d
 str r0,[r10,#12]
 adr r0,success
 swi 2
 b exit
failed:
 str r0,[r10,#12]
 str r7,[r10,#16]
 adr r0,failure
 swi 2
exit:
 ldmfd sp!,{r0-r12,lr}
 bic pc,lr,#0x10000000
discop:
 stmfd sp!,{r7,lr}
 adr r1,record
 mov r1,r1,lsl #6
 orr r1,r1,r6
 orr r2,r7,#0xa0000000
 mov r3,r9
 mov r4,#2048
 swi 0x6024d
 ldmfd sp!,{r7,pc}
success: .asciz "BigIDE boundary test PASS\r\n"
failure: .asciz "BigIDE boundary test FAIL\r\n"
.balign 4
record:
.byte 9,63,16,0,15,8,0,0,0,1,0,0
.word 0,1056964608
.hword 0
.ascii "BigIDETest"
.word 0,0
.space 24
sectors: .word 16,1048574,1048576,1048578,2064380,-1
results: .ascii "BIGIDE01"
.word 0,0,0,0
