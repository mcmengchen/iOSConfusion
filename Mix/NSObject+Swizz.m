//
//  NSObject+Swizz.m
//  Mix
//
//  Created by william on 16/7/4.
//  Copyright © 2016年 Mitchell. All rights reserved.
//

#import "NSObject+Swizz.h"
@implementation NSObject (Swizz)


BOOL class_swizzleMethodAndStore(Class class, SEL original, IMP replacement, IMPPointer store) {
    IMP imp = NULL;
    Method method = class_getInstanceMethod(class, original);
    if (method) {
        const char *type = method_getTypeEncoding(method);
        imp = class_replaceMethod(class, original, replacement, type);
        if (!imp) {
            imp = method_getImplementation(method);
        }
    }
    if (imp && store) { *store = imp; }
    return (imp != NULL);
}

+ (BOOL)swizzle:(SEL)original with:(IMP)replacement store:(IMPPointer)store {
    return class_swizzleMethodAndStore(self, original, replacement, store);
}


@end
