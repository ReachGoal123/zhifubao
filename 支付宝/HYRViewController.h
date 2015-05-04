//
//  HYRViewController.h
//  支付宝
//
//  Created by 06 on 15/1/21.
//  Copyright (c) 2015年 黄永锐. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYRViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *productList;
@end
