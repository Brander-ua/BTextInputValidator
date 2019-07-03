//
//  CompositeTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class CompositeTextInputValidator: TextInputValidator {
  
  open var validators: [TextInputValidator]
  
  public init(validators: [TextInputValidator] = []) {
    self.validators = validators
  }
  
  open func validateInputText(_ inputText: String?) -> Bool {
    return validators.reduce(true) { (result, validator) -> Bool in
      return result && validator.validateInputText(inputText)
    }
  }
}
