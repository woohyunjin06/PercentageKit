Pod::Spec.new do |s|
  s.name             = "PercentageKit"
  s.version          = "0.1.0"
  s.summary          = "Reactive extension for cell that notify its visible percentage"

  s.description      = "Reactive extension for UICollectionViewCell/UITableViewCell that notify cell's visible percentage"

  s.homepage         = "https://github.com/woohyunjin06/PercentageKit"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'woohyunjin06' => 'woohyunjin06@gmail.com' }
  s.source           = { :git => 'https://github.com/woohyunjin06/PercentageKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = "10.0"
  s.source_files = "PercentageKit/Classes/**/*"
  
  s.swift_version = "5.0"
  s.dependency "RxSwift", "~> 6.0"
end
