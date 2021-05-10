void _puts(char*);
void _exit(int);
int _abs(int);
int _pow(int, int);

int main() {
  char pow_s[] = { _pow(_abs(-3), 2)+'0', 0};

  _puts(pow_s);
  _puts("\n");

  _exit(0);
}

