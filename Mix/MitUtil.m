//
//  MitUtil.m
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import "MitUtil.h"


static BOOL _isVerified(void)
{
    return YES;
}

static BOOL _isNeedSomething(void)
{
    return YES;
}
static void _resetPassword(NSString *password)
{
    
}

static MitUtil_t *util = NULL;
@implementation MitUtil
+(MitUtil_t *)sharedUtil{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        util = malloc(sizeof(MitUtil_t));
        util->isVerified = _isVerified;
        util->isNeedSomething = _isNeedSomething;
        util->resetPassword = _resetPassword;
        util->static_createBtn = static_createBtn;

    });
    return util;
}

+(void)destroy
{
    util?free(util):0;
    util = NULL;
    
}

#pragma mark - action: 利用 static 创建按钮
static id static_createBtn()
{
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectZero];
    [btn setFrame:CGRectMake(50, 100, 100, 100)];
    [btn setBackgroundColor:[UIColor blueColor]];
    btn.layer.cornerRadius = 7.0f;
    btn.layer.masksToBounds = YES;
    return btn;
}


@end
