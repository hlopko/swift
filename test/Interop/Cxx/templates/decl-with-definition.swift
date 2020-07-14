// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-cxx-interop -Xcc -std=c++17)
//
// REQUIRES: executable_test

import DeclWithDefinition
import StdlibUnittest

var TemplatesTestSuite = TestSuite("TemplatesTestSuite")

TemplatesTestSuite.test("has-definition") {
  let a = Arg()
  var t = HasDefinition(t: a)
  expectEqual(t.callMethod(), 29)
}

runAllTests()
