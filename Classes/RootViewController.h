/*
 * 모든 뷰를 관리할 최상위 컨트롤러
 */

#import <UIKit/UIKit.h>

#import "LoginViewController.h"

@interface RootViewController : UIViewController {
	
	LoginViewController *loginViewCtrl;
	
}

- (void)initLoginViewCtrl;

@end
