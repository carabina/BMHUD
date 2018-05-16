# BMHUD
> BMHUD 是一款对 MBProgressHUD 的自定义封装，使用更简洁的 API 接口

## API

```c

+ (void)show;
+ (void)showWithStatus:(NSString *)status;

+ (void)showSuccess;
+ (void)showSuccessWithStatus:(NSString*)status;
+ (void)showSuccessWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showInfo;
+ (void)showInfoWithStatus:(NSString*)status;
+ (void)showInfoWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showError;
+ (void)showErrorWithStatus:(NSString*)status;
+ (void)showErrorWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showTextWithStatus:(NSString*)status;
+ (void)showTextWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showResponse;
+ (void)showResponseWithStatus:(NSString *)status;

+ (void)showSuccessResponse;
+ (void)showSuccessResponseWithStatus:(NSString*)status;
+ (void)showSuccessResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showInfoResponse;
+ (void)showInfoResponseWithStatus:(NSString*)status;
+ (void)showInfoResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showErrorResponse;
+ (void)showErrorResponseWithStatus:(NSString*)status;
+ (void)showErrorResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showTextResponseWithStatus:(NSString*)status;
+ (void)showTextResponseWithStatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)dismiss;
+ (void)dismissWithAfterDelay:(NSTimeInterval)af;

#pragma mark - add view

+ (void)showToView:(UIView *)view;
+ (void)showToView:(UIView *)view status:(NSString *)status;

+ (void)showSuccessToView:(UIView *)view;
+ (void)showSuccessToView:(UIView *)view status:(NSString*)status;
+ (void)showSuccessToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showInfoToView:(UIView *)view;
+ (void)showInfoToView:(UIView *)view status:(NSString*)status;
+ (void)showInfoToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showErrorToView:(UIView *)view;
+ (void)showErrorToView:(UIView *)view status:(NSString*)status;
+ (void)showErrorToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showTextToView:(UIView *)view status:(NSString*)status;
+ (void)showTextToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showResponseToView:(UIView *)view;
+ (void)showResponseToView:(UIView *)view status:(NSString *)status;

+ (void)showSuccessResponseToView:(UIView *)view;
+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showSuccessResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showInfoResponseToView:(UIView *)view;
+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showInfoResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showErrorResponseToView:(UIView *)view;
+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showErrorResponseToView:(UIView *)view status:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)showTextResponseToView:(UIView *)view status:(NSString*)status;
+ (void)showTextResponseToView:(UIView *)view tatus:(NSString*)status afterDelay:(NSTimeInterval)af;

+ (void)dismissToView:(UIView *)view;
+ (void)dismissToView:(UIView *)view afterDelay:(NSTimeInterval)af;

+ (void)setDefaultAfterDelay:(CGFloat)af;

```
