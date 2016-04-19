//
//  MyObject.m
//  MyObject
//
//  Created by lanou3g on 16/4/8.
//  Copyright © 2016年 范佳琛. All rights reserved.
//

#import "MyObject.h"

static MyObject *object = nil;

@implementation MyObject
+(MyObject *)sharedWithMyObject{
    dispatch_once_t onceToken;
    // 表示 同一时间内, 只有一个线程
    dispatch_once(&onceToken, ^{
        if ( object == nil) {
            object = [[MyObject alloc] init];
        }
    });
    
    return object;
}

@end
