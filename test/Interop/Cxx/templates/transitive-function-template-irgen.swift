// RUN: %target-swift-emit-ir %s -I %S/Inputs -enable-cxx-interop | %FileCheck %s

import TransitiveFunctionTemplate

// CHECK: foobar
public func callAdd3(_ n: CInt) -> CInt {
  return add3(n)
}

public func callGetFoo() -> CInt {
  return getFoo()
}