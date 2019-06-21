//
//  CharacterSetTextInputValidator_1_9_SymbolsTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class CharacterSetTextInputValidator_1_9_SymbolsTests: XCTestCase {

  private let validator = CharacterSetTextInputValidator()
  
  override func setUp() {
    validator.characterSet = CharacterSet(charactersIn: "123456789")
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
  
  // 0  ->  false
  func test3() {
    let actualResult = validator.validateInputText("0")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 01  ->  false
  func test4() {
    let actualResult = validator.validateInputText("01")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  true
  func test5() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 5  ->  true
  func test6() {
    let actualResult = validator.validateInputText("5")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 9  ->  true
  func test7() {
    let actualResult = validator.validateInputText("9")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  false
  func test8() {
    let actualResult = validator.validateInputText("a")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a1  ->  false
  func test9() {
    let actualResult = validator.validateInputText("a1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
