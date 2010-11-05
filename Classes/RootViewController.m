#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSLog(@"RootViewController viewDidLoad");
	
	[self initLoginViewCtrl];
}

// 로그인 뷰 초기화
- (void)initLoginViewCtrl {
	if(loginViewCtrl == nil) {
		// 로그인 뷰 생성
		loginViewCtrl = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
	
		// 로그인 상태 감시
		[loginViewCtrl addObserver:self 
						forKeyPath:@"loginState" 
						   options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial 
						   context:nil];	
	}
}

// KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
	// 로그인 상태가 변경되면...
	if([keyPath isEqualToString:@"loginState"]) {
		BOOL loginState = [[change valueForKey:NSKeyValueChangeNewKey] boolValue];	
		NSLog(@"loginState = %@\n", (loginState ? @"YES" : @"NO"));
		if(loginState == YES) {
			// 로그인이 상태가 YES가 되면 뷰를 제거한다.
			[loginViewCtrl.view removeFromSuperview];
		}
		else if(loginState == NO) {
			// 로그인이 되지 않았으면 뷰를 추가한다.
			[self.view addSubview: loginViewCtrl.view];
		}
	}
}

- (void)viewDidUnload {
    [super viewDidUnload];	
}

- (void)dealloc {		
    [super dealloc];
}

@end
