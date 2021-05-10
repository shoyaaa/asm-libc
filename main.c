void _puts(char*);
void _exit(int);
int _abs(int);

int main() {
  char first_abs[] = { _abs(-8)+'0', 0};
  char second_abs[] = { _abs(5)+'0', 0 };

  _puts(first_abs);
  _puts(" - ");
  _puts(second_abs);
  _puts("\n");

  _exit(0);
}

