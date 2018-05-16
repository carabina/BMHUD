//
//  BMLoadingVC.m
//  HUD
//
//  Created by ___liangdahong on 2018/1/22.
//  Copyright © 2018年 ___liangdahong. All rights reserved.
//

#import "BMLoadingVC.h"
#import "BMHUD.h"

@interface BMLoadingVC ()

@end

@implementation BMLoadingVC

- (IBAction)win_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showWithStatus:@"加载中..."];
    } else {
        [BMHUD show];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BMHUD dismiss];
    });
}

- (IBAction)win_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showResponseWithStatus:@"加载中..."];
    } else {
        [BMHUD showResponse];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BMHUD dismiss];
    });
}

- (IBAction)view_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showToView:self.view status:@"加载中..."];
    } else {
        [BMHUD showToView:self.view];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BMHUD dismissToView:self.view];
    });
}

- (IBAction)view_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showResponseToView:self.view status:@"加载中..."];
    } else {
        [BMHUD showResponseToView:self.view];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [BMHUD dismissToView:self.view];
    });
}

@end
