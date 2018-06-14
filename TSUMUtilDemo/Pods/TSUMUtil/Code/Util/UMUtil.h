//
//  UMUtil.h
//  UMUtil
//
//  Created by three stone 王 on 2018/6/13.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#import <UMShare/UMShare.h>

#import <UShareUI/UShareUI.h>

//#import <>
///Users/threestonewang/Desktop/仓库/UMUtil/Code/Util/UMUtil.h:14:9: 'UShareUI.h' file not found
//#import "UShareUI.h"
// U-Share分享面板SDK，未添加分享面板SDK可将此行去掉


typedef void(^UMSuccBlock)(void);

typedef void(^UMFailBlock)(void);
@interface UMUtil : NSObject

+ (UMUtil *)shared;

#pragma mark --- regUMAppKey

- (void)regUMAppKey;

#pragma mark --- share

- (void)share:(UMSocialPlatformType)plat withThumImage:(UIImage *)thumImage andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail;
//
- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation;

- (BOOL)handle:(NSURL *)url options:(NSDictionary*)options;
@end
