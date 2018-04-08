//
//  ViewController.m
//  SingleClass
//
//  Created by roc on 2018/4/4.
//  Copyright © 2018年 roc. All rights reserved.
//

#import "ViewController.h"
#import "SingleClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)test:(id)sender {
    //通过单例方法创建类
    SingleClass *single1 = [SingleClass sharedInstance];
    NSLog(@"single1=%@",single1);
    //alloc init创建类
    SingleClass *single2 = [[SingleClass alloc]init];
    NSLog(@"single2=%@",single2);
    //new方法创建类
    SingleClass *single3 = [SingleClass new];
    NSLog(@"single3=%@",single3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
