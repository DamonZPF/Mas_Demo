//
//  ViewController.m
//  Mas_Demo
//
//  Created by Duomai on 15/5/13.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIView * bgView = [[UIView alloc]init];
    bgView.backgroundColor = [UIColor redColor];
    [self.view addSubview:bgView];
    
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
        
    }];
    
    UIView * firstView = [[UIView alloc]init];
    firstView.backgroundColor = [UIColor blueColor];
    [bgView addSubview:firstView];
    
    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {
       // make.edges.equalTo(bgView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        make.top.equalTo(bgView.mas_top).with.offset(10);
        make.left.equalTo(bgView.mas_left).with.offset(10);
        make.right.equalTo(bgView.mas_right).with.offset(-10);
        make.bottom.equalTo(bgView.mas_bottom).with.offset(-10);
       
    }];
    
    
    UIView * leftView = [[UIView alloc]init];
    leftView.backgroundColor = [UIColor orangeColor];
    [bgView addSubview:leftView];
    UIView * rightView = [[UIView alloc]init];
    rightView.backgroundColor = [UIColor orangeColor];
    [bgView addSubview:rightView];
    
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(bgView.mas_centerY);
        make.left.equalTo(bgView.mas_left).with.offset(10);
        make.right.equalTo(rightView.mas_left).with.offset(-10);
        make.height.mas_equalTo(150);
        make.width.equalTo(rightView.mas_width);
    }];
    
    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(bgView.mas_centerY);
        make.left.equalTo(leftView.mas_right).with.offset(10);
        make.right.equalTo(bgView.mas_right).with.offset(-10);
        make.height.mas_equalTo(150);
        make.width.equalTo(leftView.mas_width);
    }];
    
//    UIScrollView *scrollView = [UIScrollView new];
//    scrollView.backgroundColor = [UIColor whiteColor];
//    [bgView addSubview:scrollView];
//    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(bgView).with.insets(UIEdgeInsetsMake(5,5,5,5));
//    }];
//    UIView *container = [UIView new];
//    [scrollView addSubview:container];
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(scrollView);
//        make.width.equalTo(scrollView);
//    }];
//    int count = 10;
//    UIView *lastView = nil;
//    for ( int i = 1 ; i <= count ; ++i )
//    {
//        UIView *subv = [UIView new];
//        [container addSubview:subv];
//        subv.backgroundColor = [UIColor colorWithHue:( arc4random() % 256 / 256.0 )
//                                          saturation:( arc4random() % 128 / 256.0 ) + 0.5
//                                          brightness:( arc4random() % 128 / 256.0 ) + 0.5
//                                               alpha:1];
//        
//        [subv mas_makeConstraints:^(MASConstraintMaker *make) {
//           // make.left.and.right.equalTo(container);
//            make.left.mas_equalTo(container.mas_left);
//            make.right.mas_equalTo(container.mas_right);
//            
//            make.height.mas_equalTo(@(20*i));
//            
//            if ( lastView )
//            {
//                make.top.mas_equalTo(lastView.mas_bottom);
//            }
//            else
//            {
//                make.top.mas_equalTo(container.mas_top);
//            }
//        }];
//        
//        lastView = subv;
//    }
//    [container mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(lastView.mas_bottom);
//    }];

}


@end
