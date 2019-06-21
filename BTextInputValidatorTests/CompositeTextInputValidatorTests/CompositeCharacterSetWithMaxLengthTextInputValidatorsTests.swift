//
//  CompositeCharacterSetWithMaxLengthTextInputValidatorsTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class CompositeCharacterSetWithMaxLengthTextInputValidatorsTests: XCTestCase {

  private let digitsValidator = CharacterSetTextInputValidator()
  private let maxLengthValidator = MaxLengthTextInputValidator()
  private let validator = CompositeTextInputValidator()
  
  override func setUp() {
    digitsValidator.characterSet = CharacterSet(charactersIn: "0123456789")
    maxLengthValidator.maxLength = 10
    validator.validators = [digitsValidator, maxLengthValidator]
  }
  
  // nil  ->  true
  func test1() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // ""  ->  true
  func test2() {
    let actualResult = validator.validateInputText("")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  false
  func test3() {
    let actualResult = validator.validateInputText("a")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // qwertyuiop  ->  false
  func test4() {
    let actualResult = validator.validateInputText("qwertyuiop")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  true
  func test5() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 0  ->  true
  func test6() {
    let actualResult = validator.validateInputText("0")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1234567890  ->  true
  func test7() {
    let actualResult = validator.validateInputText("1234567890")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 12345678901  ->  false
  func test8() {
    let actualResult = validator.validateInputText("12345678901")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1a  ->  false
  func test9() {
    let actualResult = validator.validateInputText("1a")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }

}
