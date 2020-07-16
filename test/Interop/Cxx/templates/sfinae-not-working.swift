// RUN: %target-run-simple-swift(-I %S/Inputs -Xfrontend -enable-cxx-interop -Xcc -std=c++17)
//
// REQUIRES: executable_test

import SfinaeDoesNotCompile
import StdlibUnittest

var TemplatesTestSuite = TestSuite("TemplatesTestSuite")

TemplatesTestSuite.test("sfinae-does-not-compile") {
  let arg = Arg()
  var tpl = TplWithSfinae(t: arg)
  // expectEqual(tpl.callMethod(), 11)
}

runAllTests()
