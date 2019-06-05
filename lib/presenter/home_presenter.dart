import 'package:flutter_tic_tac_toe/contract/HomeContract.dart';

class HomePresenter {
  HomeContract viewCallBack;

  HomePresenter(HomeContract value) {
    viewCallBack = value;
    print("Initialized");
  }

  var num1 = "0",
      num2 = "0",
      ansStr = '0',
      ans = 0,
      oper = '',
      flag = 0;

  void clear() {
    num1 = "0";
    num2 = "0";
    ansStr = '0';
    ans = 0;
    oper = '';
    flag = 0;
    viewCallBack.updateAnswerState("");
  }

  void add() {
    oper = '+';
    if (flag == 0) {
      num2 = num1;
    }
    else {
      num2 = ansStr;
    }
    num1 = '0';
  }

  void sub() {
      oper = '-';
      if (flag == 0) {
        num2 = num1;
      }
      else {
        num2 = ansStr;
      }
      num1 = '0';
  }

  void mul() {
      oper = '*';
      if (flag == 0) {
        num2 = num1;
      }
      else {
        num2 = ansStr;
      }
      num1 = '0';
  }

  void div() {
      oper = '/';
      if (flag == 0) {
        num2 = num1;
      }
      else {
        num2 = ansStr;
      }
      num1 = '0';
  }

  void one() {
      num1 += "1";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void two() {
      num1 += "2";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void three() {
      num1 += "3";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void four() {
      num1 += "4";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void five() {
      num1 += "5";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void six() {
      num1 += "6";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void seven() {
      num1 += "7";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void eight() {
      num1 += "8";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void nine() {
      num1 += "9";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void zero() {
      num1 += "0";
      ans = int.parse(num1);
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }

  void disp() {
      if (oper == '+') {
        ans = int.parse(num1) + int.parse(num2);
        flag++;
      }
      else if (oper == '-') {
        ans = int.parse(num2) - int.parse(num1);
        flag++;
      }
      else if (oper == '*') {
        ans = int.parse(num2) * int.parse(num1);
        flag++;
      }
      else if (oper == '/') {
        ans = int.parse(num2) ~/ int.parse(num1);
        flag++;
      }
      ansStr = "$ans";
      viewCallBack.updateAnswerState(ansStr);
  }
}
