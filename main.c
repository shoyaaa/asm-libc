void _puts(char*);
void _exit(int);
int _mul(int, int);

int main() {
  char size[] = { _mul(2, 3)+48, 0 };

  _puts(size);
  _puts("\n");

  _exit(0);
}

