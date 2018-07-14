UMUtil
====
#A lib for UM.

## Pod

pod 'TSUMUtil',:git=>'https://github.com/StoneStoneStoneWang/TSUMUtil.git'

## 初衷

写此代码的初衷是在项目中导入UM之后出现编译问题

## 在Other Linker Flags加入-ObjC 注意不要写为-Objc
## 白名单之类的不提

## 注意:(1)在项目中加入 UMConfig.plist 对应UMBean 中的属性设置键值对

## 注意:(2) 目前仅支持 分享网页
## 遇到的问题
与ping++冲突
遇到静态.a包的时候 需要加入  --use-libraries
遇到警告的时候 --allow-warnings
pod trunk push TSUMUtil.podspec --verbose --use-libraries --allow-warnings

## 如下问题的解决办法 https://www.jianshu.com/p/ca3f366da8f1
Cloning into'master'...

error: RPC failed; curl56SSLRead()returnerror -36

fatal: The remote end hung up unexpectedly

fatal: early EOF

fatal: index-pack failed

## pod的时候 userframeword 去掉 或注释
