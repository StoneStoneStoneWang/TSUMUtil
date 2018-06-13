//
//  UMUtil.h
//  UMUtil
//
//  Created by three stone 王 on 2018/6/13.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
///Users/threestonewang/Desktop/仓库/UMUtil/Code/Util/UMUtil.h:14:9: 'UMShare/UMShare.h' file not found
// U-Share核心SDK
//#import <UMShare/UMShare.h>
// U-Share分享面板SDK，未添加分享面板SDK可将此行去掉
//#import <UShareUI/UShareUI.h>

typedef void(^UMSuccBlock)(void);

typedef void(^UMFailBlock)(void);
@interface UMUtil : NSObject


+ (UMUtil *)shared;

#pragma mark --- regUMAppKey

- (void)regUMAppKey;

#pragma mark --- share

//- (void)share:(UMSocialPlatformType)plat withThumImage:(UIImage *)thumImage andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail;

//- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation;
//
//- (BOOL)handle:(NSURL *)url options:(NSDictionary*)options;
@end
