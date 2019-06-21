//
//  CharacterSetTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class CharacterSetTextInputValidator: TextInputValidator {
  
  open var characterSet: CharacterSet = CharacterSet()
  
  open func validateInputText(_ inputText: String?) -> Bool {
    return true
  }
}
