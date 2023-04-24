#include <iostream>

int main() {
  float num1, num2;
  char op;

  std::cout << "Введите первое число: "<< std::endl;
  std::cin >> num1;
  std::cout << "Введите оператор (+, -, *, /): "<< std::endl;
  std::cin >> op;
  std::cout << "Введите второе число: "<< std::endl;
  std::cin >> num2;

  float result;

  switch(op) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        std::cout << "Ошибка: деление на ноль" << std::endl;
        return 1;
      }
      result = num1 / num2;
      break;
    default:
      std::cout << "Ошибка: недопустимый оператор" << std::endl;
      return 1;
  }

  std::cout << "Результат: " << result << std::endl;

  return 0;
}