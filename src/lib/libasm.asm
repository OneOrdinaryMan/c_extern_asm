global write_call, exit_call
section .text
write_call: ;(int fd, char* string, int length) (rdi, rsi, rdx)
    mov rax,1
    syscall
    ret

exit_call: ;(int rs) (rdi)
    mov rax,60
    syscall
