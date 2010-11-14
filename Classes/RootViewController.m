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

- (void)initServiceViewCtrl {
	if(serviceViewCtrl == nil) {
		serviceViewCtrl = [[ServiceViewController alloc] initWithNibName:@"ServiceView" bundle:nil];
	}
}

// KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
	// 로그인 상태가 변경되면...
	if([keyPath isEqualToString:@"loginState"]) {
		BOOL loginState = [[change valueForKey:NSKeyValueChangeNewKey] boolValue];	
		NSLog(@"loginState = %@\n", (loginState ? @"YES" : @"NO"));
		if(loginState == YES) {	
			// 서비스 뷰를 보여준다.
			
			// 서비스 뷰 초기화
			[self initServiceViewCtrl];
			
 			[self changeViewFadeAnimation:loginViewCtrl to:serviceViewCtrl];
		}
		else if(loginState == NO) {
			// 로그인 뷰를 보여준다.
			if(serviceViewCtrl == nil) {
				[self.view addSubview:loginViewCtrl.view];
			}
			else {
				[self changeViewFadeAnimation:serviceViewCtrl to:loginViewCtrl];
			}
		}
	}
}


- (void)changeViewFadeAnimation:(UIViewController *)from 
				             to:(UIViewController *)to {
	// 보여줄 뷰 바닥에 깔기
	to.view.alpha = 0.0;
	[self.view insertSubview:to.view atIndex:0];
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	[UIView beginAnimations:nil context:context]; {
		// 창전환 애니메이션 시작 선언
		[UIView setAnimationDuration:1.0];			//애니메이션 동작 시간 설정 초단위 이다.
		
		// 애니메이션 커브를 설정. 일정한 속도롤 진행 하는 선형 커브
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		
		to.view.alpha = 1.0;
		from.view.alpha = 0.0;
		
		// 애니메이션 후 수행할 메소드
		[UIView setAnimationDidStopSelector:@selector(animFinished:finished:context:)];
		
	}	[UIView commitAnimations]; //해당 명령어가 사용자에게 시각적으로 보여 지게 하는 부분이다.
}

- (void)animFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context {
	if(loginViewCtrl.view.alpha == 0.0) {
		[loginViewCtrl.view removeFromSuperview];
	}
	if(serviceViewCtrl.view.alpha == 0.0) {
		[serviceViewCtrl.view removeFromSuperview];
	}
}


- (void)dealloc {
	
	[loginViewCtrl release];
	[serviceViewCtrl release];
	
    [super dealloc];
}

@end
