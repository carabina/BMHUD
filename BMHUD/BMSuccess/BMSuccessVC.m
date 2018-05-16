//
//  BMSuccessVC.m
//  HUD
//
//  Created by ___liangdahong on 2018/1/22.
//  Copyright © 2018年 ___liangdahong. All rights reserved.
//

#import "BMSuccessVC.h"
#import "BMHUD.h"

@interface BMSuccessVC ()

@end

@implementation BMSuccessVC

- (IBAction)win_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showSuccessWithStatus:@"登录成功!"];
    } else {
        [BMHUD showSuccess];
    }
}

- (IBAction)win_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showSuccessResponseWithStatus:@"登录成功!"];
    } else {
        [BMHUD showSuccessResponse];
    }
}

- (IBAction)view_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showSuccessToView:self.view status:@"登录成功!"];
    } else {
        [BMHUD showSuccessToView:self.view];
    }
}

- (IBAction)view_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showSuccessResponseToView:self.view status:@"登录成功!"];
    } else {
        [BMHUD showSuccessResponseToView:self.view];
    }
}

@end
