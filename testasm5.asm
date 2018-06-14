TITLE Add and Subtract (AddSub.asm)
;     Name: Scott Ng
; Due Date: 3-1-17
; This program adds and subtracts 32-bit integers.
; finalVal = ((A + C) - (D - C)) + A
INCLUDE Irvine32.inc
.data
finalVal dword ?
.code
main PROC
	mov eax, 4000h
	mov ecx, 2500h
	mov edx, 3000h
	mov ebx, eax            ; moves 4000h into ebx register
	add ebx, ecx            ; adds 2500h into 4000h (A + C)
	sub edx, ecx            ; subtracts 3000h by 2500h (D - C)
	sub ebx, edx            ; subtracts ((A + C) - (D - C))
	add ebx, eax            ; adds ((A + C) - (D - C)) + A
	mov finalVal, ebx
	

	call DumpRegs ; display registers (Kips Library call)
	call WaitMsg ; Displays Press any key to continue and waits for key to be pressed
	exit	
main ENDP
END main