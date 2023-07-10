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
