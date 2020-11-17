// RUN: %target-swift-frontend -emit-module -o %t/FortyTwo.swiftmodule \
// RUN:   -I %S/Inputs -enable-cxx-interop -Xcc -stdlib=libc++ \
// R UN    -Xcc -nostdinc++ \
// RUN:   -I /usr/local/google/home/hlopko/tmp/llvm/include/c++/v1 \
// RUN:   %s
// REQUIRES libc++
// REQUIRES executable_test
import UseString
import StdlibUnittest

var StdStringTestSuite = TestSuite("std::string")

StdStringTestSuite.test("return-string") {
  var s = Foo.returnString()
  expectEqual(13, s.size())
}

runAllTests()