//
//  HMTestDelegate.m
//  JSPatchProject
//
//  Created by zhcpeng on 15/12/2.
//  Copyright © 2015年 Beijing HuiMai Online Network Technology Co., Ltd. All rights reserved.
//

#import "HMTestDelegate.h"

@implementation HMTestDelegate

-(void)callDelegate{
    if (_delegate && [_delegate respondsToSelector:@selector(testDelegate)]) {
        [_delegate testDelegate];
    }
}

@end
