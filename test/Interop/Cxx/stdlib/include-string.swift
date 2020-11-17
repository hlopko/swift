// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-cxx-interop \
// RUN:   -Xcc -stdlib=libc++ \
// RUN    -Xcc -nostdinc++ \
// RUN:   -I /usr/local/google/home/hlopko/tmp/llvm/include/c++/v1 \
// RUN:   -L/usr/local/google/home/hlopko/tmp/llvm/lib \
// RUN:   -lc++ -lc++abi -lm -lc -lgcc_s -lgcc \
// RUN:   )
// R EQUIRES: libc++
// REQUIRES: executable_test
import UseString
import StdlibUnittest

var StdStringTestSuite = TestSuite("std::string")

StdStringTestSuite.test("return-string") {
  var s = Foo.returnString()
  expectEqual(42, s.size())
}

runAllTests()