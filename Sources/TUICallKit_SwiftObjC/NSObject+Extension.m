// CocoaPods 下 pod 的 umbrella header 会隐式带 Foundation / UIKit，
// SPM 没有这个机制，由 tools/pod2spm/publish_source.py 补上
#import <Foundation/Foundation.h>

//
//  NSObject+Extension.m
//  TUIVideoSeat
//
//  Created by WesleyLei on 2022/9/23.
//  Copyright © 2022 Tencent. All rights reserved.
//

#import "NSObject+Extension.h"
@implementation NSObject (Extension)

+ (void)load {
#pragma GCC diagnostic ignored "-Wundeclared-selector"
    if ([self respondsToSelector:@selector(swiftLoad)]) {
        [self performSelector:@selector(swiftLoad)];
    }
}
@end
