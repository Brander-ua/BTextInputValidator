//
//  Symbols1_9RegexTextInputValidatorTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class Symbols1_9RegexTextInputValidatorTests: XCTestCase {

  private let validator = SymbolRegexTextInputValidator()
  
  override func setUp() {
    validator.regex = "[1-9]"
  }
  
  // ""  ->  true
  func test7() {
    let actualResult = validator.validateInputText("")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // nil  ->  true
  func test8() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  false
  func test1() {
    let actualResult = validator.validateInputText("a")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a1  ->  false
  func test2() {
    let actualResult = validator.validateInputText("a1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1a  ->  false
  func test3() {
    let actualResult = validator.validateInputText("1a")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  true
  func test4() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 9  ->  true
  func test5() {
    let actualResult = validator.validateInputText("9")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0  ->  false
  func test6() {
    let actualResult = validator.validateInputText("0")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
