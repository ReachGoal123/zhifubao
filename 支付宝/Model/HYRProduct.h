//
//  HYRProduct.h
//  支付宝
//
//  Created by 06 on 15/1/21.
//  Copyright (c) 2015年 黄永锐. All rights reserved.
//

//实体类   商品

#import <Foundation/Foundation.h>

@interface HYRProduct : NSObject
{
    float _price;//价格
    NSString *_subject;
    NSString *_body;
    NSString *_orderId;
}


@property (nonatomic,unsafe_unretained)float price;
@property (nonatomic,copy)NSString *subject;
@property (nonatomic,copy)NSString *body;
@property (nonatomic,copy)NSString *orderId;
@property (nonatomic,strong)NSMutableArray *productList;

//======产生订单信息======
+(NSMutableArray*)generateData;

//========产生随机订单号=======
+(NSString *)generateTradeNO;
@end
