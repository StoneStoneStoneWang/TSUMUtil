//
//  UMUtil.m
//  UMUtil
//
//  Created by three stone 王 on 2018/6/13.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import "UMUtil.h"
#import "UMBean.h"
#import <MJExtension/MJExtension.h>
static UMUtil *manager = nil;
@implementation UMUtil

+ (UMUtil *)shared {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [UMUtil new];
        
    });
    return manager;
}

- (NSString *)currentVersion {
    
    return @TSUMUtil_VERSION;
}
- (void)regUMAppKey {
    
    UMBean *um = [UMBean mj_objectWithFile:[[NSBundle mainBundle] pathForResource:@"UMConfig" ofType:@".plist"]];
    
    [UMSocialManager defaultManager].umSocialAppkey = um.UMSocialAppkey;
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:um.UMWechatAppkey appSecret:um.UMWechatAppSecret redirectURL:um.UMWechatRedirectURL];
    
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:um.UMQQAppkey appSecret:um.UMQQAppSecret redirectURL:um.UMQQRedirectURL];
    
    
}
- (void)setPreDefinePlatforms:(NSArray *)arr {
    
    [UMSocialUIManager setPreDefinePlatforms:arr];
}

- (void)share:(UMSocialPlatformType)plat withTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail {
    
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        
        UMShareWebpageObject *shareObj = [UMShareWebpageObject shareObjectWithTitle:title descr:descr thumImage:thumImage];
        
        shareObj.webpageUrl = webpageUrl;
        
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
- (void)shareWithUMPanelBoard:(UMSocialPlatformType)plat withTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail {
    
    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
        
        UMShareWebpageObject *shareObj = [UMShareWebpageObject shareObjectWithTitle:title descr:descr thumImage:thumImage];
        
        shareObj.webpageUrl = webpageUrl;
        
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

- (void)shareWithNoUMPanelBoard:(UMSocialPlatformType)plat withTitle:(NSString *)title withDescr:(NSString *)descr withThumImage:(UIImage *)thumImage andWebpageUrl:(NSString *)webpageUrl andCurrentVC:(UIViewController *)current andSucc:(UMSuccBlock)succ andFail:(UMFailBlock)fail {
    
    UMShareWebpageObject *shareObj = [UMShareWebpageObject shareObjectWithTitle:title descr:descr thumImage:thumImage];
    
    shareObj.webpageUrl = webpageUrl;
    
    UMSocialMessageObject *obj = [UMSocialMessageObject new];
    
    obj.shareObject = shareObj;
    
    [[UMSocialManager defaultManager] shareToPlatform:plat messageObject:obj currentViewController:current completion:^(id result, NSError *error) {
        
        if (error) {
            
            succ();
        } else {
            
            fail();
        }
    }];
}

- (BOOL)handle:(NSURL *)url forSourceApplication:(NSString *)sourceApplication andAnnotation:(id)annotation{
    
    return [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
}
- (BOOL)handle:(NSURL *)url options:(NSDictionary *)options {
    
    return [[UMSocialManager defaultManager] handleOpenURL:url options:options];
}
@end
