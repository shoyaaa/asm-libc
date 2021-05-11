void _puts(char*);
void _exit(int);
int _atoi(char*);

int main() {
  char num[] = { 0, 10, 0 };
  num[0] = _atoi("3") + _atoi("6") + '0';

  _puts(num);

  _exit(0);
}

