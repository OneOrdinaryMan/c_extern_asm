extern int write_call(int fd, char *string, int length);
extern void exit_call(int rs);
void _start(void) {
  write_call(1, "Hello, World!\n", 15);
  exit_call(0);
}
