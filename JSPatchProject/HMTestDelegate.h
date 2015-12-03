//
//  HMTestDelegate.h
//  JSPatchProject
//
//  Created by zhcpeng on 15/12/2.
//  Copyright © 2015年 Beijing HuiMai Online Network Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HMDelegate <NSObject>

-(void) testDelegate;

@end

@interface HMTestDelegate : NSObject

@property (nonatomic, assign) id<HMDelegate> delegate;

-(void)callDelegate;

@end
