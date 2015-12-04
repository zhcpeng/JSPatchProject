//
//  ViewController.m
//  JSPatchProject
//
//  Created by zhcpeng on 15/12/1.
//  Copyright © 2015年 Beijing HuiMai Online Network Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"

#import "JPEngine.h"

#import "HMTestDelegate.h"

@interface ViewController ()<HMDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [JPEngine startEngine];
    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"viewcontroller" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
    
    
}

-(IBAction)btnClick:(UIButton *)button{
    NSLog(@"输出1：本地原生方法");
//    [self callFunction];
}

- (IBAction)btnAlieat:(id)sender {
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"111" message:@"22" delegate:self cancelButtonTitle:@"NO" otherButtonTitles:nil, nil];
//    [alert show];
    
    HMTestDelegate *obj = [[HMTestDelegate alloc]init];
    obj.delegate = self;
    [obj callDelegate];
    
}

-(void)testDelegate{
    NSLog(@"输出4：本地代理方法");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
