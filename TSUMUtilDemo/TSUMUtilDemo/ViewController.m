//
//  ViewController.m
//  TSUMUtilDemo
//
//  Created by three stone 王 on 2018/6/14.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

#import "ViewController.h"
#import "UMUtil.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[UMUtil shared] regUMAppKey];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
