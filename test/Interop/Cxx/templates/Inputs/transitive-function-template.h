#ifndef TEST_INTEROP_CXX_TEMPLATES_INPUTS_TRANSITIVE_FUNCTION_TEMPLATE_H
#define TEST_INTEROP_CXX_TEMPLATES_INPUTS_TRANSITIVE_FUNCTION_TEMPLATE_H

template<typename T>
inline T increment(T t) {
  return t + 1;
}

template<typename T>
inline T add2(T t) {
  return increment(increment(t));
}

template<typename T>
inline T add3(T t) {
  return increment(add2(t));
}

template<typename T>
struct Wrapper {
  T& wrapee;
  Wrapper(T&& t) : wrapee(myStdForward(t)) {}
};

template<typename T>
inline T&& myStdForward(T&& param) {
  return static_cast<T&&>(param);
}

struct MyInt {
  int value = 42;
};

inline int getMyIntValue() { return Wrapper<MyInt>(MyInt()).wrapee.value; }

#endif // TEST_INTEROP_CXX_TEMPLATES_INPUTS_TRANSITIVE_FUNCTION_TEMPLATE_H
