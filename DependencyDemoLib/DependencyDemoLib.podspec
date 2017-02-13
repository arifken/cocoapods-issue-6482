Pod::Spec.new do |s|
  s.name             = 'DependencyDemoLib'
  s.version          = '0.1.0'
  s.summary          = 'This is a library created to demo a CocoaPods issue'
  s.description      = 'This is a library created to demo a CocoaPods issue. The issue arises when the library depends on other pods that require a deployment target set'
  s.homepage         = 'https://github.com/CocoaPods/CocoaPods/issues/6482'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andy Rifken' => 'test@example.org' }
  s.source           = { :git => 'https://github.com/arifken/DependencyDemoLib.git', :tag => s.version.to_s }

  # s.ios.deployment_target = '10.0' # If you comment this line, out linting will fail. Also, it can't be set to < 10, because it uses the Messages framework

  s.source_files = 'DependencyDemoLib/Classes/**/*'
  
  s.dependency 'Alamofire', '~> 4.3'
  s.dependency 'AlamofireImage', '~> 3.2'
end
