void _exit(int);
void _puts(char*);
int _atoi(char*);

int main() {
  _puts("Hello, world!\n");

  _exit(_atoi("0"));
}

