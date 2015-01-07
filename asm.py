
def num(x): 
	s  = "\t\tmov rdx, rbx\n"
	s += "\t\tshr rbx, 1\n"
	s += "\t\tand rdx, 1\n"
	s += "\t\tjnz .nz" + str(x) + "\n"
	s += "\t\tjmp .z" + str(x) + "\n"
	s += "\t\t.z" + str(x) + ":\n"
	s += 	"\t\t\tadd rax, rcx\n"
	s += 	"\t\t\tsub rax, rdi\n"
	s += 	"\t\t\tmov rcx, 2\n"
	s += 	"\t\t\tjmp .ez" + str(x) + "\n"
	s += "\t\t.nz" + str(x) + ":\n"
	s += "\t\t\timul rcx, 2\n"
	s += "\t\t.ez" + str(x) + ":\n"
	return s
	
for i in range(63):
	print(num(i))
	print()
