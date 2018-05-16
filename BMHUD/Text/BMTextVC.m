//
//  BMTextVC.m
//  HUD
//
//  Created by ___liangdahong on 2018/1/22.
//  Copyright © 2018年 ___liangdahong. All rights reserved.
//

#import "BMTextVC.h"
#import "BMHUD.h"

@interface BMTextVC ()

@end

@implementation BMTextVC

- (IBAction)win_noAction:(id)sender {
    [BMHUD showTextWithStatus:@"登录成功!"];
}

- (IBAction)win_Action:(id)sender {
    [BMHUD showTextResponseWithStatus:@"登录成功!"];
}

- (IBAction)view_noAction:(id)sender {
    [BMHUD showTextToView:self.view status:@"登录成功!"];
}

- (IBAction)view_Action:(id)sender {
    [BMHUD showTextResponseToView:self.view status:@"登录成功!"];
}

@end
