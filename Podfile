platform :ios, '9.0'
use_frameworks!

# The target for the main iOS app is 9.0
target 'DependencyDemo' do
  pod 'Alamofire'
  pod 'AlamofireImage'
end

# The deployment target for this is set to 10.0 in the project
target 'DependencyDemoMessages' do
  pod 'DependencyDemoLib', :path => './DependencyDemoLib'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'DependencyDemoLib'
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '10.0'
      end
    end
  end
end
