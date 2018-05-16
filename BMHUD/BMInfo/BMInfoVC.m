//
//  BMInfoVC.m
//  HUD
//
//  Created by ___liangdahong on 2018/1/22.
//  Copyright © 2018年 ___liangdahong. All rights reserved.
//

#import "BMInfoVC.h"
#import "BMHUD.h"

@interface BMInfoVC ()

@end

@implementation BMInfoVC

- (IBAction)win_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showInfoWithStatus:@"网络错误！"];
    } else {
        [BMHUD showInfo];
    }
}

- (IBAction)win_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showInfoResponseWithStatus:@"网络错误！"];
    } else {
        [BMHUD showInfoResponse];
    }
}

- (IBAction)view_noAction:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showInfoToView:self.view status:@"网络错误！"];
    } else {
        [BMHUD showInfoToView:self.view];
    }
}

- (IBAction)view_Action:(id)sender {
    if (arc4random_uniform(2)) {
        [BMHUD showInfoResponseToView:self.view status:@"网络错误！"];
    } else {
        [BMHUD showInfoResponseToView:self.view];
    }
}

@end
