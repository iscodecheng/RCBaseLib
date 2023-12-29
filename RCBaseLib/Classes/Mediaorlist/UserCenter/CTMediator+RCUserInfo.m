//
//  CTMediator+RCUserInfo.m
//  RCBaseLib
//
//  Created by chenglong on 2023/12/25.
//

#import "CTMediator+RCUserInfo.h"

#define kRCUserCenter @"RCUserCenter"
#define kMethod_GetUserInfoVC @"getUserInfoVC"

@implementation CTMediator (RCUserInfo)

- (UIViewController *)mediatorGetUserInfo {
    return [self performTarget:kRCUserCenter action:kMethod_GetUserInfoVC params:@{@"success":@(YES)} shouldCacheTarget:YES];
}


@end
