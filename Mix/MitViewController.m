//
//  MitViewController.m
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import "MitViewController.h"
#import "NSObject+Swizz.h"

@interface MitViewController ()

@end

@implementation MitViewController





- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];

}


- (void)click:(UIButton *)btn{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
