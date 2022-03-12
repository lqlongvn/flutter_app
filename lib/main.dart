
import 'package:flutter/material.dart';

main(){
  var dog = new Dog();
  dog.talk();
}

class Dog{
  int legs;
  Dog(){
    print("default constructor");
  }
  void talk() {
    print("Gau gau");
  }
}

