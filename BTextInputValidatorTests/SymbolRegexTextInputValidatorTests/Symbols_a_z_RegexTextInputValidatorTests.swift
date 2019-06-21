//
//  Symbols_a_z_RegexTextInputValidatorTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class Symbols_a_z_RegexTextInputValidatorTests: XCTestCase {

  private let validator = SymbolRegexTextInputValidator()
  
  override func setUp() {
    validator.regex = "[a-z]"
  }
  
  // ""  ->  true
  func test10() {
    let actualResult = validator.validateInputText("")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // nil  ->  true
  func test11() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  false
  func test1() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a1  ->  false
  func test2() {
    let actualResult = validator.validateInputText("a1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  true
  func test3() {
    let actualResult = validator.validateInputText("a")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // A  ->  false
  func test4() {
    let actualResult = validator.validateInputText("A")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // aA  ->  false
  func test5() {
    let actualResult = validator.validateInputText("aA")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // z  ->  true
  func test6() {
    let actualResult = validator.validateInputText("z")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // Z  ->  false
  func test7() {
    let actualResult = validator.validateInputText("Z")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // az  ->  true
  func test8() {
    let actualResult = validator.validateInputText("az")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // AZ  ->  false
  func test9() {
    let actualResult = validator.validateInputText("AZ")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
