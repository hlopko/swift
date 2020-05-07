// RUN: %empty-directory(%t)
// RUN: %target-build-swift %s -I %S/Inputs -o %t/inheritance -Xfrontend -enable-cxx-interop -Xcc -std=c++17
// RUN: %target-codesign %t/inheritance
// RUN: %target-run %t/inheritance 2&>1
//
// REQUIRES: executable_test

import Inheritance
import StdlibUnittest

var InheritanceTestSuite = TestSuite("Inheritance")

InheritanceTestSuite.test("overriden-method") {
  var child = Child()
  expectEqual(86, child.bar())
}

InheritanceTestSuite.test("non-overriden-method") {
  var child = Child()
  expectEqual(42, child.foo())
}

InheritanceTestSuite.test("non-virtual-method") {
  var child = Child()
  expectEqual(44, child.baz())
}

InheritanceTestSuite.test("fields") {
  var child = Child()
  expectEqual(12, child.parentField)
  expectEqual(24, child.childField)
}

runAllTests()
