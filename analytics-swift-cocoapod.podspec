Pod::Spec.new do |spec|
  spec.name          = "Segment"
  spec.version       = "1.8.0"
  spec.summary       = "The hassle-free way to integrate analytics into any iOS application."
  spec.description   = <<-DESC
                       Analytics for iOS provides a single API that lets you
                       integrate with over 100s of tools without having to learn,
                       test or implement a new API every time.
                       DESC

  spec.homepage      = "https://segment.com/"
  spec.license       = { :type => "MIT", :file => "LICENSE" }
  spec.author        = { "Segment" => "friends@segment.com" }

  spec.source        = { :git => "https://github.com/tyler-cook-self/analytics-swift-cocoapod.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target     = "13.0"
  spec.osx.deployment_target     = "10.15"
  spec.tvos.deployment_target    = "13.0"
  spec.watchos.deployment_target = "7.1"
  spec.visionos.deployment_target = "1.0"

  spec.swift_version = "5.9"

  spec.source_files = "Sources/**/*.swift"
  spec.resource_bundles = {
    'Segment' => ['Sources/Segment/Resources/**/*']
  }

  spec.dependency "Sovran", "~> 1.1.1"
  spec.dependency "JSONSafeEncoding", "~> 2.0.0"

  spec.frameworks = "Foundation"
  spec.ios.frameworks = "UIKit"
  spec.osx.frameworks = "AppKit"
  spec.tvos.frameworks = "UIKit"
  spec.watchos.frameworks = "WatchKit"

  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
end
