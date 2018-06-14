//
//  UMBean.h
//  TSUMUtilMaster
//
//  Created by three stone 王 on 2018/6/14.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UMBean : NSObject

@property (nonatomic ,copy) NSString *UMSocialAppkey;

@property (nonatomic ,copy) NSString *UMWechatAppkey;

@property (nonatomic ,copy) NSString *UMWechatAppSecret;

@property (nonatomic ,copy) NSString *UMWechatRedirectURL;

@property (nonatomic ,copy) NSString *UMQQAppkey;

@property (nonatomic ,copy) NSString *UMQQAppSecret;

@property (nonatomic ,copy) NSString *UMQQRedirectURL;

@end
