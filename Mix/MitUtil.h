//
//  MitUtil.h
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//核心逻辑写为结构体
typedef struct _until{
    BOOL(*isVerified)(void);
    BOOL(*isNeedSomething)(void);
    void(*resetPassword)(NSString *password);
    id(*static_createBtn)(void);
//void _resetPassword(NSString *password)

}MitUtil_t;

#define MitUnitil ([MitUtil sharedUtil])

@interface MitUtil : NSObject

+(MitUtil_t*)sharedUtil;



@end
