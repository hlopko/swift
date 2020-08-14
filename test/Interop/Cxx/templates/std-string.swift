// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-cxx-interop -experimental-cxx-stdlib libc++ -enable-experimental-cxx-interop)
//
// REQUIRES: executable_test

import StdlibUnittest
import StdString

var TemplatesTestSuite = TestSuite("TemplatesTestSuite")

TemplatesTestSuite.test("std-string") {
  var s = MyString()
//   expectEqual(magicInt.getValuePlusArg(111), 444)
}

runAllTests()
