require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "Smartech-ReactNative-Nudges"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  Smartech-ReactNative-Nudges
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-smartech-react-native-nudges"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0", :tvos => "10.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-smartech-react-native-nudges.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
	s.dependency 'SmartechNudges', '~> 8.5.0'
end

