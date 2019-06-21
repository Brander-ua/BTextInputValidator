Pod::Spec.new do |s|
  s.name             = 'BTextInputValidator'
  s.version          = '0.1.0'
  s.summary          = 'Text input validator'

  s.homepage         = 'https://github.com/Brander-ua/BTextInputValidator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'luximetr' => 'alexandr.orlov@brander.ua' }
  s.source           = { :git => 'https://github.com/Brander-ua/BTextInputValidator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'TextInputValidator/Source/**/*'
end
