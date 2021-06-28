//
//  IMHttpNetworking.m
//  IMChat
//
//  Created by 5173-Mac on 2021/5/12.
//

#import "IMHttpNetworking.h"

@interface IMHttpNetworking()

@end

@implementation IMHttpNetworking

static IMHttpNetworking *defaultManager = nil;
+ (IMHttpNetworking *)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        defaultManager = [[self alloc] init];
    });
    return defaultManager;
}


@end
