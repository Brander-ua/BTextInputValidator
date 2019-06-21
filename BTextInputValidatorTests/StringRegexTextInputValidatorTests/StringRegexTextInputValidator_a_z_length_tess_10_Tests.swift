//
//  StringRegexTextInputValidator_a_z_length_tess_10_Tests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class StringRegexTextInputValidator_a_z_length_tess_10_Tests: XCTestCase {

  private let validator = StringRegexTextInputValidator()
  
  override func setUp() {
    validator.regex = "([a-z]){0,10}"
  }
  
  // ""  ->  true
  func test1() {
    let actualResult = validator.validateInputText("")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // nil  ->  true
  func test2() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1aa  ->  false
  func test3() {
    let actualResult = validator.validateInputText("1aa")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // aaa  ->  true
  func test4() {
    let actualResult = validator.validateInputText("aaa")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // qwertyuiop  ->  true
  func test5() {
    let actualResult = validator.validateInputText("qwertyuiop")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // qwertyuiopa  ->  false
  func test6() {
    let actualResult = validator.validateInputText("qwertyuiopa")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // Aaa  ->  false
  func test7() {
    let actualResult = validator.validateInputText("Aaa")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
