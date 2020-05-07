// RUN: %empty-directory(%t)
// RUN: %target-build-swift %s -I %S/Inputs -o %t/const-methods -Xfrontend -enable-cxx-interop -Xcc -std=c++17
// RUN: %target-codesign %t/const-methods
// RUN: %target-run %t/const-methods 2&>1
//
// REQUIRES: executable_test

import ConstMethods
import StdlibUnittest

var ConstMethodsTestSuite = TestSuite("const-methods")

ConstMethodsTestSuite.test("const-method") {
  let banana = Banana()
  expectEqual(86, banana.constMethod())
}

runAllTests()
