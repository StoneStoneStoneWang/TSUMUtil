UMUtil
====
#A lib for UM.

## Pod

pod 'UMUtil',:git=>'https://github.com/StoneStoneStoneWang/UMUtil.git'

#初衷

写此代码的初衷是在项目中导入UM之后出现编译问题

*在Other Linker Flags加入-ObjC 注意不要写为-Objc

*依赖库
libsqlite3.tbd
CoreGraphics.framework
SystemConfiguration.framework
CoreTelephony.framework
libsqlite3.tbd
libc++.tbd
libz.tbd

SystemConfiguration.framework
CoreTelephony.framework
ImageIO.framework
libsqlite3.tbd
libz.tbd
Photos.framework

*设置白名单
<!-- 微信 URL Scheme 白名单-->
<string>wechat</string>
<string>weixin</string>
<!-- 新浪微博 URL Scheme 白名单-->
<string>sinaweibohd</string>
<string>sinaweibo</string>
<string>sinaweibosso</string>
<string>weibosdk</string>
<string>weibosdk2.5</string>
<!-- QQ、Qzone URL Scheme 白名单-->
<string>mqqapi</string>
<string>mqq</string>
<string>mqqOpensdkSSoLogin</string>
<string>mqqconnect</string>
<string>mqqopensdkdataline</string>
<string>mqqopensdkgrouptribeshare</string>
<string>mqqopensdkfriend</string>
<string>mqqopensdkapi</string>
<string>mqqopensdkapiV2</string>
<string>mqqopensdkapiV3</string>
<string>mqqopensdkapiV4</string>
<string>mqzoneopensdk</string>
<string>wtloginmqq</string>
<string>wtloginmqq2</string>
<string>mqqwpa</string>
<string>mqzone</string>
<string>mqzonev2</string>
<string>mqzoneshare</string>
<string>wtloginqzone</string>
<string>mqzonewx</string>
<string>mqzoneopensdkapiV2</string>
<string>mqzoneopensdkapi19</string>
<string>mqzoneopensdkapi</string>
<string>mqqbrowser</string>
<string>mttbrowser</string>
<string>tim</string>
<string>timapi</string>
<string>timopensdkfriend</string>
<string>timwpa</string>
<string>timgamebindinggroup</string>
<string>timapiwallet</string>
<string>timOpensdkSSoLogin</string>
<string>wtlogintim</string>
<string>timopensdkgrouptribeshare</string>
<string>timopensdkapiV4</string>
<string>timgamebindinggroup</string>
<string>timopensdkdataline</string>
<string>wtlogintimV1</string>
<string>timapiV1</string>
## 遇到的问题
与ping++冲突
遇到静态.a包的时候 需要加入  --use-libraries
遇到警告的时候 --allow-warnings
pod trunk push TSUMUtil.podspec --verbose --use-libraries --allow-warnings
