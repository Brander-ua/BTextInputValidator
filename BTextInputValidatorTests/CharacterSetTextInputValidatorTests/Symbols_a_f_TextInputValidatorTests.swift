//
//  Symbols_a_f_TextInputValidatorTests.swift
//  BTextInputValidatorTests
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import XCTest
@testable import BTextInputValidator

class Symbols_a_f_TextInputValidatorTests: XCTestCase {
  
  private let validator = CharacterSetTextInputValidator()

  override func setUp() {
    validator.characterSet = CharacterSet(charactersIn: "abcdef")
  }
  
  // nil  ->  true
  func test1() {
    let actualResult = validator.validateInputText(nil)
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // ""  ->  true
  func test2() {
    let actualResult = validator.validateInputText("")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a  ->  true
  func test3() {
    let actualResult = validator.validateInputText("a")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // a1  ->  false
  func test4() {
    let actualResult = validator.validateInputText("a1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // A  ->  false
  func test5() {
    let actualResult = validator.validateInputText("A")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }

  // f  ->  true
  func test6() {
    let actualResult = validator.validateInputText("f")
    let expectedResult = true
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // aA  ->  false
  func test7() {
    let actualResult = validator.validateInputText("aA")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // 1  ->  false
  func test8() {
    let actualResult = validator.validateInputText("1")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
  
  // g  ->  false
  func test9() {
    let actualResult = validator.validateInputText("9")
    let expectedResult = false
    XCTAssert(actualResult == expectedResult, "\n\(actualResult) must be equal to\n\(expectedResult)")
  }
}
