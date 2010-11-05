#import "LoginViewController.h"

@implementation LoginViewController

@synthesize loginState;

@synthesize chkLoginKeep;
@synthesize txtIdField;
@synthesize txtPasswdField;

-(void)viewDidLoad {
	NSLog(@"viewDidLoad");

	/**
	 * 향후 구현될 예정 현재는 무조건 인증업무를 거친 후 진행하도록 합니다.
	 */
	NSLog(@"저장된 인증키로 서버와 통신해서 인증업무를 처리를 합니다.");
	
	self.loginState = NO;	
}

// ID 입력 완료 이벤트 처리
- (IBAction)IdFieldDoneEditing: (id)sender {
	[sender resignFirstResponder];	
}

// PASSWORD 입력 완료 이벤트 처리
- (IBAction)PasswdFieldGoEditing: (id)sender {
	[sender resignFirstResponder];
}

// 키보드 나왔을때 뷰 누르면 키보드 사라지게 하기!
- (IBAction)backgroundTab: (id)sender {
	[txtIdField resignFirstResponder];	
	[txtPasswdField resignFirstResponder];	
}

// 로그인 상태 유지 체크박스 이벤트
- (IBAction)changeLoginKeepState: (id)sender {
	UIImage *chkImage;
	if (loginKeepState) {
		loginKeepState = NO;
		chkImage = [UIImage imageNamed:@"checkBox_Off.png"];
		
	}
	else {
		loginKeepState = YES;
		chkImage = [UIImage imageNamed:@"checkBox_On.png"];
	}
	[chkLoginKeep setImage:chkImage forState:UIControlStateNormal];
}

// 봄싹 웹사이트로 이동하기
- (IBAction)showAlertMoveToSpringSprotWebSite: (id)sender {
	UIAlertView *alertView = [[UIAlertView alloc]
							  initWithTitle: @"" 
							  message: @"봄싹 홈페이지로 이동하시겠습니까?" 
							  delegate: self cancelButtonTitle: nil 
							  otherButtonTitles: @"예", @"아니요", nil];
	[alertView show];	
}

// 봄싹 웹사이트 이동하기 AlertView 이벤트 처리
- (void)alertView: (UIAlertView *)alertView
        clickedButtonAtIndex: (NSInteger)buttonIndex {
	if (buttonIndex == 0) {
		NSURL *url = [[NSURL alloc] initWithString: @"http://springsprout.org"];
		[[UIApplication sharedApplication] openURL:url];
		[url release];
		
	}
	[alertView release];	
}

// 로그인 시도
- (IBAction)tryLogin: (id)sender {
	self.loginState = YES;
}

- (void) dealloc {
	
    [chkLoginKeep release];
	[txtIdField release];
	[txtPasswdField release];
	
	[super dealloc];
	
}

@end
