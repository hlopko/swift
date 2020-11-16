// RUN: %empty-directory(%t)
// RUN: %target-swift-frontend -emit-module -o %t/FortyTwo.swiftmodule \
// RUN:   -I %S/Inputs -enable-cxx-interop -Xcc -stdlib=libc++ -Xcc \
// RUN:   -isystem/usr/local/google/home/hlopko/tmp/llvm/include/c++/v1 \
// RUN:   -sysroot/usr/local/google/home/hlopko/tmp/llvm \
// RUN:   -Xcc -std=c++17 %s
// REQUIRE libc++
import UseString

public func foo() {
// func getString() -> std.iosfwd {
  print(returnString())
  // var dep = yolo.YohoDep()
  // yolo.useTemplateType(dep)
  // print(nested.getOne())
}

foo()