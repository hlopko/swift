// RUN: %target-swift-emit-ir -I %S/Inputs -enable-cxx-interop \
// RUN:   -Xcc -stdlib=libc++ \
// RUN    -Xcc -nostdinc++ \
// RUN:   -I /usr/local/google/home/hlopko/tmp/llvm/include/c++/v1 \
// RUN:   %s
// R EQUIRES: libc++

import UseString

var s = Foo.returnString()
print("Hello", s.size())
