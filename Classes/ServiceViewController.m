#import "ServiceViewController.h"


@implementation ServiceViewController

@synthesize tabBarCtrl = _tabBarCtrl;
@synthesize studyNaviCtrl = _studyNaviCtrl;


- (void)viewDidLoad {
    [super viewDidLoad];
	
	// StudyServiceDelegate 초기화
	_studyServiceDelegate = [[StudyServieDelegate alloc] init];
	_studyServiceDelegate.navigationController = _studyNaviCtrl;
	_studyNaviCtrl.delegate = _studyServiceDelegate;
	_studyNaviCtrl.navigationBar.tintColor = [UIColor colorWithRed:.5 green:.7 blue:.3 alpha:.8];
	
	self.view = _tabBarCtrl.view;
}


- (void)dealloc {
	[_tabBarCtrl release];
	[_studyNaviCtrl release];
	
	[_studyServiceDelegate release];
	
	[super dealloc];
}


@end
