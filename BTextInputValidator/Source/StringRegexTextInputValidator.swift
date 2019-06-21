//
//  StringRegexTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class StringRegexTextInputValidator: TextInputValidator {
  
  open var regex: String = ""
  
  open func validateInputText(_ inputText: String?) -> Bool {
    return true
  }
}
