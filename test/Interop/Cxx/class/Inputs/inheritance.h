#ifndef TEST_INTEROP_CXX_CLASS_INPUTS_INHERITANCE_H
#define TEST_INTEROP_CXX_CLASS_INPUTS_INHERITANCE_H

class Parent {
public:
  virtual int foo() { return 42; }
  virtual int bar() { return 43; }
  int baz() { return 44; }
  int parentField = 12;
};

class Child : public Parent {
public:
  virtual int bar() override { return 86; }
  int childField = 24;
};

#endif // TEST_INTEROP_CXX_CLASS_INPUTS_INHERITANCE_H
