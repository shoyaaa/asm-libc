void _puts(char*);
void _exit(int);
int _abs(int);
int _upow(int, int);

int main() {
  char upow_s[] = { _upow(_abs(-123123), 0)+'0', 0};

  _puts(upow_s);
  _puts("\n");

  _exit(0);
}

