
Pod::Spec.new do |s|
  s.name         = "RNJMaxBrowser"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNJMaxBrowser
                   DESC
  s.homepage     = "https://github.com/CLANNADAIR/react-native-jmImageBrowser"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "clannad" => "522674616@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/CLANNADAIR/react-native-jmImageBrowser", :tag => "#{s.version}" }
  s.source_files = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  