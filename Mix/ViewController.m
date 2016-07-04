//
//  ViewController.m
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import "ViewController.h"
#import "MitUtil.h"
#import "MitViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.核心代码使用结构体示例
    MitUnitil->isVerified();
    //2.使用 static 隐藏代码,利用架构体将 隐藏方法的方法指针暴露出。
    UIButton * btn = MitUnitil->static_createBtn();
    [self.view addSubview:btn];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)sample{
    
}

-(void)seg1:(NSString *)string seg2:(NSUInteger)num{
    
    
    
}
- (void)xxxxxx{
    
}

@end
