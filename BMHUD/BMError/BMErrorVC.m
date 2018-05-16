//
//  BMErrorVC.m
//  HUD
//
//  Created by ___liangdahong on 2018/1/22.
//  Copyright © 2018年 ___liangdahong. All rights reserved.
//

#import "BMErrorVC.h"
#import "BMHUD.h"

@interface BMErrorVC ()

@end

@implementation BMErrorVC

- (IBAction)win_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showErrorWithStatus:@"登录失败!"];
    } else {
        [BMHUD showError];
    }
}

- (IBAction)win_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showErrorResponseWithStatus:@"登录失败!"];
    } else {
        [BMHUD showErrorResponse];
    }
}

- (IBAction)view_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showErrorToView:self.view status:@"登录失败!"];
    } else {
        [BMHUD showErrorToView:self.view];
    }
}

- (IBAction)view_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showErrorResponseToView:self.view status:@"登录失败!"];
    } else {
        [BMHUD showErrorResponseToView:self.view];
    }
}

@end
