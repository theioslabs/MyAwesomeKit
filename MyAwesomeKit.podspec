Pod::Spec.new do |s|

  s.name             = 'MyAwesomeKit'
  s.version          = '1.0.0'
  s.summary          = 'A simple demo payment SDK for iOS.'
  s.homepage         = 'https://github.com/chauhanbhavin/MyAwesomeKitFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bhavin Chauhan' => 'bhavin@example.com' }
  s.source           = { :git => 'https://github.com/chauhanbhavin/MyAwesomeKitFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '16.0'
  s.swift_versions        = ['5.9']

  s.source_files = 'MyAwesomeKit/**/*.swift'
  s.exclude_files = 'MyAwesomeKit/**/*.docc/**'

end
