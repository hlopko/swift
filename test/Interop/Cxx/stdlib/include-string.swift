// RUN: %target-swift-frontend -emit-module -o %t/FortyTwo.swiftmodule \
// RUN:   -I %S/Inputs -enable-cxx-interop \
// RU N    -Xcc -stdlib=libc++ -Xcc \
// RU N:   -isystem/usr/local/google/home/hlopko/tmp/llvm/include/c++/v1 \
// RU N:   -Xcc -sysroot/usr/local/google/home/hlopko/tmp/llvm \
// RUN:   -Xcc -std=c++17 %s
// REQUIR E libc++
import UseString

public func foo() {
  var s = Foo.returnString()
  // var dep = yolo.YohoDep()
  // yolo.useTemplateType(dep)
  // print(nested.getOne())
  print(s.size())
}