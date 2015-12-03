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
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 200, 50);
    [btn setTitle:@"测试js" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
    
    [JPEngine startEngine];
    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"viewcontroller" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
    
    
}

-(void)btnClick:(UIButton *)button{
    NSLog(@"11111");
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
    NSLog(@"55555");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
