Pod::Spec.new do |s|
  s.name         = 'AsgardCore'
  s.version      = '0.0.1'
  s.summary      = 'AsgardCore - iOS SDK for Asgard AI Platform'
  s.description  = 'AsgardCore is a powerful iOS framework that provides core functionality and chatbot features for Asgard AI Platform.'
  s.homepage     = 'https://www.asgard-ai.com/'
  s.ios.deployment_target = '13.0'
  s.platform     = :ios, '13.0'
  s.license      = {
    :type => 'MIT', 
    :file => 'LICENSE' 
  }
  s.author       = {
    'ink.tu' => 'ink.tu@asgard-ai.com' 
  }
  s.source       = {
    :git => 'https://github.com/inktu777/asgard-ios.git',
    :tag => "#{s.version}" 
  }

  s.vendored_frameworks = 'AsgardCore.xcframework'
  s.requires_arc = true
end
