/*
 * 모든 뷰를 관리할 최상위 컨트롤러
 */

#import <UIKit/UIKit.h>

#import "LoginViewController.h"
#import "ServiceViewController.h"

@interface RootViewController : UIViewController {
	
	LoginViewController *loginViewCtrl;
	ServiceViewController *serviceViewCtrl;
	
}

- (void)initLoginViewCtrl;
- (void)initServiceViewCtrl;

- (void)changeViewFadeAnimation:(UIViewController *)from 
				             to:(UIViewController *)to;

@end
