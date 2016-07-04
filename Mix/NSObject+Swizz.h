//
//  NSObject+Swizz.h
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
typedef IMP *IMPPointer;

@interface NSObject (Swizz)

+ (BOOL)swizzle:(SEL)original with:(IMP)replacement store:(IMPPointer)store;
@end
