//
//  ViewController.m
//  TSUMUtilMaster
//
//  Created by three stone 王 on 2018/6/14.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

#import "UMUtil.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)share:(id)sender {
    
//    [[UMUtil shared] shareWithNoUMPanelBoard:(UMSocialPlatformType_WechatSession) withTitle:@"分享" withDescr:@"1234" withThumImage:[UIImage new] andWebpageUrl:@"www.baidu.com" andCurrentVC:self andSucc:^{
//        
//    } andFail:^{
//        
//    }];
    
    [[UMUtil shared] shareWithUMPanelBoardWithTitle:@"分享" withDescr:@"1234" withThumImage:[UIImage new] andWebpageUrl:@"www.baidu.com" andCurrentVC:self andSucc:^{
        
    } andFail:^{
        
    }];
    
}


@end
