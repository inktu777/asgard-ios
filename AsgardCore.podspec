Pod::Spec.new do |s|
  s.name         = 'Asgard-ios'
  s.version      = '0.0.1'
  s.summary      = 'AsgardCore'
  s.homepage     = 'https://www.asgard-ai.com/'
  s.ios.deployment_target = '13.0'
  s.platform     = :ios, '13.0'
  s.license      = {
    :type => 'MIT', 
    :file => 'LICENSE' 
  }
  s.author       = {
    'YourName' => 'ink.tu' 
  }
  s.source       = {
    :git => 'https://github.com/inktu777/asgard-ios.git',
    :tag => "#{s.version}" 
  }

  s.framework = "UIKit"
  s.source_files = 'AsgardCore.xcframework'
  s.requires_arc = true
end
