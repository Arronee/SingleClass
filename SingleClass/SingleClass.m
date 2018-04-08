//
//  SingleClass.m
//  SingleClass
//
//  Created by roc on 2018/4/4.
//  Copyright © 2018年 roc. All rights reserved.
//

#import "SingleClass.h"

@interface SingleClass()

@property(nonatomic,assign)int height;
@property(nonatomic,strong)NSArray *arrayM;
@property(nonatomic,strong)NSDictionary *dictionaryM;

@end

@implementation SingleClass

//网上大部分的单例是这种写法
static SingleClass *instance = nil;
+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        instance = [[[self class] alloc] init];
    });
    return instance;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _height = 10;
        _arrayM = [[NSArray alloc]init];
        _dictionaryM = [[NSDictionary alloc]init];
    }
    return self;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}

-(NSString *)description
{
    NSString *result= @"";
    result = [result stringByAppendingFormat:@"<%@: %p>",[self class], self];
    result = [result stringByAppendingFormat:@" height = %d,",self.height];
    result = [result stringByAppendingFormat:@" arrayM = %p,",self.arrayM];
    result = [result stringByAppendingFormat:@" dictionaryM = %p,",self.dictionaryM];
    return result;
}
@end
