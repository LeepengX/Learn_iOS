//
//  ViewController.m
//  NewOC
//
//  Created by Boa on 2017/7/31.
//  Copyright © 2017年 LeepengX. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *testView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    testView.backgroundColor = [UIColor blackColor];
    //阴影
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowBlurRadius = 1;
    shadow.shadowColor = [UIColor colorWithWhite:1 alpha:0.1];
    shadow.shadowOffset = CGSizeMake(1, 0);
    NSShadow *lightShadow = [[NSShadow alloc] init];
    lightShadow.shadowBlurRadius = 1;
    lightShadow.shadowColor = [UIColor colorWithWhite:1 alpha:0.04];
    lightShadow.shadowOffset = CGSizeMake(0, 1);
    NSString *headStr = @"头文字D";
    NSString *joinNum = [NSString stringWithFormat:@"中文测试6738"];
    NSString *appendStr = @"人发布了视频";
    NSString *subText = [headStr stringByAppendingString:[joinNum stringByAppendingString:appendStr]];
    NSRange range = [subText rangeOfString:joinNum];
    NSMutableAttributedString *subStr = [[NSMutableAttributedString alloc] initWithString:
                                         subText];
    [subStr addAttributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:13],
                            NSForegroundColorAttributeName:[UIColor colorWithWhite:1 alpha:1],
                            NSShadowAttributeName:shadow}
                    range:range];
    
    [subStr addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13],
                            NSForegroundColorAttributeName:[UIColor colorWithWhite:1 alpha:0.8],
                            NSShadowAttributeName:lightShadow}
                    range:NSMakeRange(0, range.location)];
    [subStr addAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13],
                            NSForegroundColorAttributeName:[UIColor colorWithWhite:1 alpha:0.8],
                            NSShadowAttributeName:lightShadow}
                    range:NSMakeRange(range.location+range.length, subStr.length-range.location-range.length)];
    testView.attributedText = subStr;
    [self.view addSubview:testView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
