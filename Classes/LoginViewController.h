#import <Foundation/Foundation.h>

@interface LoginViewController : UIViewController<UIAlertViewDelegate> {

	BOOL loginState;
	
	// 로그인 유지 체크박스
	UIButton *chkLoginKeep;
	
	// 로그인 아이디 & 비밀번호 입력창
	UITextField *txtIdField;
	UITextField *txtPasswdField;

@private
	// 로그인 유지 상태
	BOOL loginKeepState;
}

@property (nonatomic) BOOL loginState;

@property (nonatomic, retain) IBOutlet UIButton *chkLoginKeep;
@property (nonatomic, retain) IBOutlet UITextField *txtIdField;
@property (nonatomic, retain) IBOutlet UITextField *txtPasswdField;

- (IBAction)IdFieldDoneEditing: (id)sender;
- (IBAction)PasswdFieldGoEditing: (id)sender;
- (IBAction)backgroundTab: (id)sender;

- (IBAction)changeLoginKeepState: (id)sender;

- (IBAction)showAlertMoveToSpringSprotWebSite: (id)sender;

- (IBAction)tryLogin: (id)sender;

@end
