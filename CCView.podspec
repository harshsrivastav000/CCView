
Pod::Spec.new do |s|
  s.name             = 'CCView'
  s.version          = '1.1.5'
  s.summary          = 'Perfect animation'

  s.description      = <<-DESC
The collection cells open and close smoothly giving a card effect
                       DESC

  s.homepage         = 'https://github.com/harshsrivastav000/CCView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HarshSrivastava' => 'harshsrivastava@globussoft.in' }
  s.source           = { :git => 'https://github.com/harshsrivastav000/CCView.git', :tag => s.version }

  s.ios.deployment_target = '11.0'
  s.source_files = 'CCView/*'
  s.swift_version = '4.0'

end
