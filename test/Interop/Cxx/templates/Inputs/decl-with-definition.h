#ifndef TEST_INTEROP_CXX_TEMPLATES_INPUTS_DECL_WITH_DEFINITION_H
#define TEST_INTEROP_CXX_TEMPLATES_INPUTS_DECL_WITH_DEFINITION_H

template<class T>
struct MagicWrapper {
  T t;
  int callGetInt() const {
    return t.getInt() + 5;
  }
};

struct MagicNumber {
  int getInt() const { return 24; }
};

inline MagicWrapper<MagicNumber> forceInstantiating() {
  return MagicWrapper<MagicNumber>();
}

// MagicWrapper<MagicNumber> ClassTemplateSpecializationDecl has a definition
// because function above forced the instantiation. Its members are not
// instantiated though, the Swift compiler needs to instantiate them.
typedef MagicWrapper<MagicNumber> PartiallyDefinedWrappedMagicNumber;

#endif // TEST_INTEROP_CXX_TEMPLATES_INPUTS_DECL_WITH_DEFINITION_H
