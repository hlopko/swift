// Check that when qualifying Clang types with a module name, we choose a
// visible module. Clang types need special treatment because multiple Clang
// modules can contain the same type declarations from a textually included
// header, but not all of these modules may be visible. If we choose a module
// that isn't visible, we produce `.swiftinterface` files that don't compile.
//
// This is a regression test for https://bugs.swift.org/browse/SR-13032.

// RUN: %empty-directory(%t)
// RUN: mkdir %t/sub_module %t/main_module
// RUN: %target-swift-frontend -enable-library-evolution -swift-version 5 -emit-module -o %t/sub_module/SubModule.swiftmodule %S/Inputs/SubModule.swift -I %S/Inputs
// RUN: %target-swift-frontend -enable-library-evolution -swift-version 5 -emit-module -o %t/main_module/MainModule.swiftmodule -emit-module-interface-path %t/main_module/MainModule.swiftinterface -I %t/sub_module %S/Inputs/MainModule.swift -I %S/Inputs
// RUN: %target-swift-frontend -typecheck -swift-version 5 %t/main_module/MainModule.swiftinterface -I %t/sub_module -I %S/Inputs
