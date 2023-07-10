global write_call, exit_call
section .comment
    ;C Extern asm
    ;Copyright (C) 2023  Srivathsan Sudarsanan

    ;This program is free software: you can redistribute it and/or modify
    ;it under the terms of the GNU General Public License as published by
    ;the Free Software Foundation, either version 3 of the License, or
    ;(at your option) any later version.

    ;This program is distributed in the hope that it will be useful,
    ;but WITHOUT ANY WARRANTY; without even the implied warranty of
    ;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    ;GNU General Public License for more details.

    ;You should have received a copy of the GNU General Public License
    ;along with this program.  If not, see <https://www.gnu.org/licenses/>.
section .text
write_call: ;(int fd, char* string, int length) (rdi, rsi, rdx)
    mov rax,1
    syscall
    ret

exit_call: ;(int rs) (rdi)
    mov rax,60
    syscall
