//
//  UMUtil.m
//  UMUtil
//
//  Created by three stone 王 on 2018/6/13.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import "UMUtil.h"

static UMUtil *manager = nil;
@implementation UMUtil

+ (UMUtil *)shared {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [UMUtil new];
        
    });
    return manager;
}
- (void)regUMAppKey {
    
    [UMSocialManager defaultManager].umSocialAppkey = @"5b03c2daf29d986c25000026";
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:@"wxa754913ed33e8405" appSecret:@"174f26cadf1da91e015d9799338a1ddd" redirectURL:@"http://mobile.umeng.com/social"];
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:@"1106923288" appSecret:@"T9LkhUk29WxuReQd" redirectURL:@"http://mobile.umeng.com/social"];
    
}
- (void)share:(UMSocialPlatformType)plat withThumImage:(UIImage *)thumImage andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail {
    
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        
        UMShareWebpageObject *shareObj = [UMShareWebpageObject shareObjectWithTitle:@"锁嘟嘟" descr:@"专业锁匠服务App，服务于大众。" thumImage:thumImage];
        
        shareObj.webpageUrl = @"http://wxpay.dodosoon.com/sharePage.html";
        
        UMSocialMessageObject *obj = [UMSocialMessageObject new];
        
        obj.shareObject = shareObj;
        
        [[UMSocialManager defaultManager] shareToPlatform:plat messageObject:obj currentViewController:current completion:^(id result, NSError *error) {
            
            if (error) {
                
                succ();
            } else {
                
                fail();
            }
        }];
    }];
}
- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation{
    
    return [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
}
- (BOOL)handle:(NSURL *)url options:(NSDictionary *)options {
    
    return [[UMSocialManager defaultManager] handleOpenURL:url options:options];
}
@end
