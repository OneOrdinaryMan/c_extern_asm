/*
    C Extern asm
    Copyright (C) 2023  Srivathsan Sudarsanan

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/
extern int write_call(int fd, char *string, int length);
extern void exit_call(int rs);
void _start(void) {
  char *hello = "Hello, World\n";
  int return_val = write_call(1, hello, 15);
  if (return_val == -1) {
    exit_call(1);
  }
  exit_call(0);
}
