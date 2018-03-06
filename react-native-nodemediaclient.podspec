require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = package_json["name"]
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.license        = "MIT"
  s.homepage       = "https://github.com/perrystreetsoftware/react-native-nodemediaclient"
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/perrystreetsoftware/react-native-nodemediaclient.git", :tag => "#{s.version}" }
  s.source_files   = '**/*.{h,m}'
  s.exclude_files  = 'android/**/*'
  s.preserve_paths = '*.md', '*.js'

  s.dependency 'React'
end
