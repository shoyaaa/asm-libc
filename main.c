int _strlen(char*);
void _puts(char*);
void _exit(int);

int main() {
  char mytext[] = "shoyaaa";
  char size[] = { _strlen(mytext)+48, 0 };

  _puts("length of '");
  _puts(mytext);
  _puts("' is: ");
  _puts(size);
  _puts("\n");

  _exit(0);
}

