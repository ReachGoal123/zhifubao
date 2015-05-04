//
//  HYRProduct.m
//  支付宝
//
//  Created by 06 on 15/1/21.
//  Copyright (c) 2015年 黄永锐. All rights reserved.
//

#import "HYRProduct.h"


@implementation HYRProduct

+(NSMutableArray*)generateData{
    NSArray *subjects = @[@"1",
                          @"2",@"3",@"4",
                          @"5",@"6",@"7",
                          @"8",@"9",@"10"];
	NSArray *body = @[@"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据",
                      @"我是测试数据"];
    
    NSMutableArray *productArr = [NSMutableArray array];
    for (int i = 0; i < [subjects count]; i++) {
		HYRProduct *product = [[HYRProduct alloc] init];
		product.subject = [subjects objectAtIndex:i];
		product.body = [body objectAtIndex:i];
        
		product.price = 0.01f+pow(10,i-2);
		[productArr addObject:product];
	}
    
    return productArr;
}


#pragma mark -
#pragma mark   ==============产生随机订单号==============


+(NSString *)generateTradeNO
{
	static int kNumber = 15;
	
	NSString *sourceStr = @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	NSMutableString *resultStr = [[NSMutableString alloc] init];
	srand(time(0));
	for (int i = 0; i < kNumber; i++)
	{
		unsigned index = rand() % [sourceStr length];
		NSString *oneStr = [sourceStr substringWithRange:NSMakeRange(index, 1)];
		[resultStr appendString:oneStr];
	}
	return resultStr;
}

@end
