#ifndef TEST_INTEROP_CXX_TEMPLATES_INPUTS_SFINAE_DOES_NOT_COMPILE_H
#define TEST_INTEROP_CXX_TEMPLATES_INPUTS_SFINAE_DOES_NOT_COMPILE_H

template<class T>
struct Tpl {
public:
  T t;
  inline int callMethod() const {
    return t.methodDoesNotExist() + 5;
  }
};

struct Arg {
public:
  inline int method() const { return 6; }
};

typedef Tpl<Arg> TplWithSfinae;

#endif // TEST_INTEROP_CXX_TEMPLATES_INPUTS_SFINAE_DOES_NOT_COMPILE_H
