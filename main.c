void _puts(char*);
void _exit(int);
void _gets(int, char*);

int main() {
  char buffer[25];

  _puts("Write your name: ");
  _gets(25, buffer);
  _puts("Hello, ");
  _puts(buffer);
  _puts("!\n");

  _exit(0);
}

