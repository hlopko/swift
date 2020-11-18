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
struct basic_string {
  T& _t;
  basic_string(T&& t) : _t(forward(t)) {}
};

template<typename T>
inline T&& forward(T&& param) {
    return static_cast<T&&>(param);
}

struct Foo {
  int a = 42;
};

inline int getFoo() { return basic_string<Foo>(Foo())._t.a; }

#endif // TEST_INTEROP_CXX_TEMPLATES_INPUTS_TRANSITIVE_FUNCTION_TEMPLATE_H
