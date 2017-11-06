//
//  LGReachability.m
//  LGReachability
//
//  Created by Leon Guo on 2017/11/3.
//  Copyright © 2017年 Leon Guo. All rights reserved.
//

#import "LGReachability.h"
#import "Reachability.h"
@implementation LGReachability
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(checkStatusForAddress:(NSString *)address callBack:(RCTResponseSenderBlock)callback)
{
    Reachability *reachability = [Reachability reachabilityWithHostName:address];
    
    int flag = -1;
    switch([reachability currentReachabilityStatus]){
            
        case NotReachable:
            flag = 0;
            break;
        case ReachableViaWiFi:
            flag = 1;
            break;
        case ReachableViaWWAN:
            flag =2;
            break;
    }
    callback(@[[NSNull null],@(flag)]);
}


@end
