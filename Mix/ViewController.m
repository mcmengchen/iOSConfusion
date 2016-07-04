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
#import "NSObject+Swizz.h"
@interface ViewController ()

@end

@implementation ViewController
+(void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        Class class = [self class];
//        When swizzling a class method, use the following:
//        Class class = object_getClass((id)self);
        //1.转化方式1
//        SEL originalSelector = @selector(viewWillAppear:);
//        SEL swizzledSelector = @selector(xxx_viewWillAppear:);
//        Method originalMethod = class_getInstanceMethod(class, originalSelector);
//        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
//        BOOL didAddMethod =
//        class_addMethod(class,
//                        originalSelector,
//                        method_getImplementation(swizzledMethod),
//                        method_getTypeEncoding(swizzledMethod));
//        
//        if (didAddMethod) {
//            class_replaceMethod(class,
//                                swizzledSelector,
//                                method_getImplementation(originalMethod),
//                                method_getTypeEncoding(originalMethod));
//        } else {
//            method_exchangeImplementations(originalMethod, swizzledMethod);
//        }
        //2.转换方式2
        [self swizzle:@selector(viewWillAppear:) with:(IMP)xxx_viewWillAppear store:(IMP *)&Setxxx_viewWillAppearIMP];
    });
}


#pragma mark - Method Swizzling 转换类方法
//方式2
static void xxx_viewWillAppear(id self,SEL _cmd,BOOL animated);
static void (*Setxxx_viewWillAppearIMP)(id self, SEL _cmd, BOOL animated);
static void xxx_viewWillAppear(id self, SEL _cmd, BOOL animated) {
    Setxxx_viewWillAppearIMP(self, _cmd, animated);
    NSLog(@"viewWillAppear = %s",__func__);
}



//方式1
//- (void)xxx_viewWillAppear:(BOOL)animated {
//    [self xxx_viewWillAppear:animated];
//    NSLog(@"%s",__func__);
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    //1.核心代码使用结构体示例
    MitUnitil->isVerified();
    //2.使用 static 隐藏代码,利用架构体将 隐藏方法的方法指针暴露出。
    UIButton * btn = MitUnitil->static_createBtn();
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)click:(UIButton*)btn{
    MitViewController * vc = [MitViewController new ];
    [self presentViewController:vc animated:YES completion:nil];
}




-(void)sample{
    
}

-(void)seg1:(NSString *)string seg2:(NSUInteger)num{
    
    
    
}
- (void)xxxxxx{
    
}

@end
