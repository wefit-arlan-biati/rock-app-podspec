Pod::Spec.new do |spec|
  spec.name          = 'RockApp'
  spec.version       = '0.0.1'
  spec.summary       = 'RockApp summary'
  spec.description   = 'RockApp description'
  spec.homepage      = 'https://github.com/wefit-arlan-biati/rock-app-podspec.git'
  spec.author        = { 'Arlan Gustavo Biati' => 'arlan.biati@wefit.com.br' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :git => 'https://github.com/wefit-arlan-biati/rock-app-podspec.git', :tag => spec.version.to_s }

  spec.swift_version = '5.0'
  spec.platform      = :ios, '15.1'

  spec.ios.vendored_frameworks = [
    "Frameworks/hermes.xcframework",
    "Frameworks/ReactBrownfield.xcframework",
    "Frameworks/TestRockAppReact.xcframework",
  ]

end
