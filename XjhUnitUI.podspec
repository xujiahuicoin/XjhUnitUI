#
#  Be sure to run `pod spec lint XjhUnitUI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "XjhUnitUI"  #名称
s.version      = "0.0.1"                #版本号
s.summary      = "一个简短的简介"    #简介
s.description  = <<-DESC                                      #详细介绍
提供了 UIView的创建，和一下系统发发的设置捷径
DESC
s.homepage     = "https://github.com/xujiahuicoin/XjhUnitUI"
s.license      = "MIT"  #开源协议（这里一定要创建，下面会说）
s.author             = { "XujiahuiCoin" => "xujiahuicoin@gmail.com" }
s.platform     = :ios, "10.0"  #支持的平台及版本
s.source       = { :git => "https://github.com/xujiahuicoin/XjhUnitUI.git", :tag => "0.0.1" }    #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
s.source_files = "XjhUnitUI", 'XjhUnitUISwift/Classes/**/*'     #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，如果需要在项目中分组显示，这里也要做相应的设置


#s.frameworks = 'UIKit,framework'                  #所需的framework，多个用逗号隔开
#s.requires_arc = true    #是否使用arc
# s.screensh

end
