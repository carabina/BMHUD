//
//  BMHUD.m
//  BMHUD
//
//  Created by ___liangdahong on 2018/5/16.
//  Copyright © 2018年 ( https://liangdahong.com/ ). All rights reserved.
//

#import "BMHUD.h"
#import <MBProgressHUD/MBProgressHUD.h>

static inline UIWindow* frontWindow () {
    NSEnumerator *frontToBackWindows = [UIApplication.sharedApplication.windows reverseObjectEnumerator];
    for (UIWindow *window in frontToBackWindows) {
        BOOL windowOnMainScreen = window.screen == UIScreen.mainScreen;
        BOOL windowIsVisible = !window.hidden && window.alpha > 0;
        BOOL windowLevelSupported = (window.windowLevel == UIWindowLevelNormal);
        if(windowOnMainScreen && windowIsVisible && windowLevelSupported) {
            return window;
        }
    }
    return nil;
}

#define kKeyWindow (frontWindow())

static CGFloat afterDelay = .98f;

@implementation BMHUD

+ (void)show {
    [self showWithStatus:nil];
}

+ (void)showWithStatus:(NSString *)status {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:YES];
}

+ (void)showSuccess {
    [self showSuccessWithStatus:nil];
}

+ (void)showSuccessWithStatus:(NSString*)status {
    [self showSuccessWithStatus:status afterDelay:afterDelay];
}

+ (void)showSuccessWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showInfo {
    [self showInfoWithStatus:nil];
}

+ (void)showInfoWithStatus:(NSString*)status {
    [self showInfoWithStatus:status afterDelay:afterDelay];
}

+ (void)showInfoWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showError {
    [self showErrorWithStatus:nil];
}

+ (void)showErrorWithStatus:(NSString*)status {
    [self showErrorWithStatus:status afterDelay:afterDelay];
    
}
+ (void)showErrorWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showTextWithStatus:(NSString*)status {
    [self showTextWithStatus:status afterDelay:afterDelay];
}

+ (void)showTextWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:YES];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showResponse {
    [self showResponseWithStatus:nil];
}
+ (void)showResponseWithStatus:(NSString *)status {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:NO];
}

+ (void)showSuccessResponse {
    [self showSuccessResponseWithStatus:nil];
}

+ (void)showSuccessResponseWithStatus:(NSString*)status {
    [self showSuccessResponseWithStatus:status afterDelay:afterDelay];
}

+ (void)showSuccessResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showInfoResponse {
    [self showInfoResponseWithStatus:nil];
}
+ (void)showInfoResponseWithStatus:(NSString*)status {
    [self showInfoResponseWithStatus:status afterDelay:afterDelay];
}
+ (void)showInfoResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showErrorResponse {
    [self showErrorResponseWithStatus:nil];
}

+ (void)showErrorResponseWithStatus:(NSString*)status {
    [self showErrorResponseWithStatus:status afterDelay:afterDelay];
}

+ (void)showErrorResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showTextResponseWithStatus:(NSString*)status {
    [self showTextResponseWithStatus:status afterDelay:afterDelay];
}

+ (void)showTextResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:kKeyWindow status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:NO];
    [self dismissToView:kKeyWindow afterDelay:afterDelay];
}

+ (void)showToView:(UIView *)view {
    [self showToView:view status:nil];
}

+ (void)showToView:(UIView *)view status:(NSString *)status {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:YES];
}

+ (void)showSuccessToView:(UIView *)view {
    [self showSuccessToView:view status:nil];
}

+ (void)showSuccessToView:(UIView *)view status:(NSString*)status {
    [self showSuccessToView:view status:status afterDelay:afterDelay];
}

+ (void)showSuccessToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showInfoToView:(UIView *)view {
    [self showInfoToView:view status:nil];
}

+ (void)showInfoToView:(UIView *)view status:(NSString*)status {
    [self showInfoToView:view status:status afterDelay:afterDelay];
}

+ (void)showInfoToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showErrorToView:(UIView *)view {
    [self showErrorToView:view status:nil];
}

+ (void)showErrorToView:(UIView *)view status:(NSString*)status {
    [self showErrorToView:view status:status afterDelay:afterDelay];
}

+ (void)showErrorToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showTextToView:(UIView *)view status:(NSString*)status {
    [self showTextToView:view tatus:status afterDelay:afterDelay];
}

+ (void)showTextToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:YES];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showResponseToView:(UIView *)view {
    [self showResponseToView:view status:nil];
}

+ (void)showResponseToView:(UIView *)view status:(NSString *)status {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeIndeterminate imageName:nil userInteractionEnabled:NO];
}

+ (void)showSuccessResponseToView:(UIView *)view {
    [self showSuccessResponseToView:view status:nil];
}

+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status {
    [self showSuccessResponseToView:view status:status afterDelay:afterDelay];
}

+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"success" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showInfoResponseToView:(UIView *)view {
    [self showInfoResponseToView:view status:nil];
}

+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status {
    [self showInfoResponseToView:view status:status afterDelay:afterDelay];
}

+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"info" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showErrorResponseToView:(UIView *)view {
    [self showErrorResponseToView:view status:nil];
}

+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status {
    [self showErrorResponseToView:view status:status afterDelay:afterDelay];
}

+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:@"error" userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)showTextResponseToView:(UIView *)view status:(NSString*)status {
    [self showTextResponseToView:view tatus:status afterDelay:afterDelay];
}

+ (void)showTextResponseToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)afterDelay {
    [self bm_showWithToView:view status:status mode:MBProgressHUDModeCustomView imageName:nil userInteractionEnabled:NO];
    [self dismissToView:view afterDelay:afterDelay];
}

+ (void)dismiss {
    [self dismissWithAfterDelay:0.0];
}

+ (void)dismissWithAfterDelay:(NSTimeInterval)afterDelay {
    [[UIApplication sharedApplication].windows enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIWindow * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self dismissToView:obj afterDelay:afterDelay];
    }];
}

+ (void)dismissToView:(UIView *)view {
    [self dismissToView:view afterDelay:0.0];
}

+ (void)dismissToView:(UIView *)view afterDelay:(NSTimeInterval)afterDelay {
    [self bm_dismissToView:view afterDelay:afterDelay];
}

#pragma mark - 私有方法

+ (void)bm_showWithToView:(UIView *)view
                   status:(NSString *)status
                     mode:(MBProgressHUDMode)mode
                imageName:(NSString *)name
   userInteractionEnabled:(BOOL)userInteractionEnabled {
    if (!view)return;
    [self dismissToView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.backgroundView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.mode = mode;
    if (name.length) {
        hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
    }
    hud.userInteractionEnabled = userInteractionEnabled;
    hud.label.text = status;
    [hud showAnimated:YES];
}

+ (void)bm_dismissToView:(UIView *)view
              afterDelay:(NSTimeInterval)afterDelay {
    if (!view)return;
    [view.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:MBProgressHUD.class]) {
            [(MBProgressHUD *)obj hideAnimated:YES afterDelay:afterDelay];
        }
    }];
}

+ (void)setDefaultAfterDelay:(CGFloat)af {
    afterDelay = af;
}

@end
