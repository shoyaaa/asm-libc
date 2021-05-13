void _exit(int);
void _puts(char*);
int _atoi(char*);

int main() {
  char str[] = { _atoi("3")+48, '\n', 0 };

  _puts(str);
  _exit(_atoi("0"));
}
