void _exit(int);
void _puts(char*);
int _atoi(char*);
void* _memset(void*, char, int);
int _strlen(char*);

int main() {
  char a[10];

  _memset(a, '$', sizeof(a)-1);

  _puts(a);
  _puts("\n");

  return 0;
}

