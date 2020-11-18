// RUN: %target-swift-emit-sil %s -I %S/Inputs -enable-cxx-interop | %FileCheck %s

import TransitiveFunctionTemplate

// CHECK: foobar
public func callAdd3(_ n: CInt) -> CInt {
  return add3(n)
}

public func callGetMyIntValue() -> CInt {
  return getMyIntValue()
}