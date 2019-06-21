//
//  MaxLength5TextInputValidatorTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class MaxLength5TextInputValidatorTests: XCTestCase {
  
  private let validator = MaxLengthTextInputValidator()
  
  override func setUp() {
    validator.maxLength = 5
  }
  
  // ""  ->  true
  func test3() {
    let actualResult = validator.validateInputText("")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // nil  ->  true
  func test4() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1234  ->  true
  func test1() {
    let actualResult = validator.validateInputText("1234")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // abcd  ->  true
  func test2() {
    let actualResult = validator.validateInputText("abcd")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  true
  func test5() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 12345  ->  true
  func test6() {
    let actualResult = validator.validateInputText("12345")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 123456  ->  false
  func test7() {
    let actualResult = validator.validateInputText("123456")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }

}
