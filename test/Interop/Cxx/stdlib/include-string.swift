// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-cxx-interop \
// RUN:   -enable-experimental-cxx-interop -experimental-cxx-stdlib libc++ \
// RUN:   )
//
// REQUIRES: executable_test
import UseString
import StdlibUnittest

var StdStringTestSuite = TestSuite("std::string")

StdStringTestSuite.test("return-string") {
  var s = Foo.returnString()
  expectEqual(42, s.size())
}

runAllTests()