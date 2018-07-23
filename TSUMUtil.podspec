
Pod::Spec.new do |s|

s.name         = "TSUMUtil"

s.version      = "1.1.0"

s.summary      = "A Lib For UM."

s.description  = <<-DESC
写此代码的初衷是在项目中导入UM之后出现编译问题
DESC

s.homepage     = "https://github.com/StoneStoneStoneWang/TSUMUtil"
s.license      = { :type => "MIT", :file => "LICENSE.md" }
s.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
s.platform     = :ios, "9.0"
s.ios.deployment_target = "9.0"

s.requires_arc = true

s.frameworks = 'UIKit', 'Foundation'

s.source       = { :git => "https://github.com/StoneStoneStoneWang/TSUMUtil.git", :tag => "#{s.version}" }

s.source_files = "Code/**/*.{h,m}"

s.dependency 'UMCCommon'

s.dependency 'UMCSecurityPlugins'

s.dependency 'UMCShare/Social/WeChat'

s.dependency 'UMCShare/Social/QQ'

s.dependency 'UMCShare/UI'

s.dependency 'MJExtension'
end



