.data
arr1: .word 97, 101			# s[2] = {a, e}
arr2: .word 97, 101, 97		# t[3] = {a, e, a}
str:  .string "the added letter is"

.text
#s0 = arr1 base address
#s1 = arr2 base address
#s2 = length of arr1
#s3 = length of arr2
#s4 = output
#s5 = sum of arr1
#s6 = sum of arr2
#t0 = i
main:
		la s0, arr1		#s0 store the address of arr1
		la s1, arr2		#s1 store the address of arr1
		addi s2, s2, 2	#s2 always equal to 2
		addi s3, s3, 3	#s3 alwaly equal to 3
		add s4, x0, x0
		add s5, x0, x0
		add s6, x0, x0
		add t0, x0, x0
		jal ra, loop1
		sw x0, t0
		jal ra, loop2
		j end
		

loop1:
		add s5, s5, s0
		addi s0, s0, 4
		addi t0, t0, 1
		blt t0, s2, loop1
		ret	
loop2:
		add s6, s6, s1
		addi s1, s1, 4
		addi t0, t0, 1
		blt t0, s3, loop2
		ret
end:
		la a0, str
		li a7, 4
		ecall
		sub a0, s6, s5
		li a7, 1
		ecall

