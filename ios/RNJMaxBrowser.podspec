
Pod::Spec.new do |s|
  s.name         = "react-native-photoview-jm"
  s.version      = "1.0.0"
  s.summary      = "RNJMaxBrowser"
  s.description  = <<-DESC
                  RNJMaxBrowser
                   DESC
  s.homepage     = "https://github.com/CLANNADAIR/react-native-jmImageBrowser"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "522674616@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/CLANNADAIR/react-native-jmImageBrowser", :tag => "#{s.version}" }
  s.source_files  = "ios/RNJMaxBrowser/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  