//
//  UMUtil.h
//  UMUtil
//
//  Created by three stone 王 on 2018/6/13.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#import <UMCommon/UMCommon.h>

#import <UMShare/UMShare.h>

#import <UShareUI/UShareUI.h>

#import "UMUtilConst.h"
//#import <>
///Users/threestonewang/Desktop/仓库/UMUtil/Code/Util/UMUtil.h:14:9: 'UShareUI.h' file not found
//#import "UShareUI.h"
// U-Share分享面板SDK，未添加分享面板SDK可将此行去掉


typedef void(^UMSuccBlock)(void);

typedef void(^UMFailBlock)(void);
@interface UMUtil : NSObject

+ (UMUtil *)shared;

#pragma mark --- 设置分享面板

- (void)setPlats:(NSArray *)plats;

#pragma mark --- 当前库 版本

- (NSString *)currentVersion;

#pragma mark --- regUMAppKey

- (void)regUMAppKey;

#pragma mark --- share。不用自己做分享面板

- (void)share:(UMSocialPlatformType)plat withTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail __attribute__((deprecated("1.0.5版本之前可用 1.0.6版本之后请使用 shareWithUMPanelBoard 或 shareWithNoUMPanelBoard")));

#pragma mark ---  新增两种需要和不需要面板的函数

- (void)shareWithUMPanelBoardWithTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail;

- (void)shareWithNoUMPanelBoard:(UMSocialPlatformType)plat withTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail;
//
- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation;

- (BOOL)handle:(NSURL *)url options:(NSDictionary*)options ;

@end
