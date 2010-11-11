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
	
	self.view = _tabBarCtrl.view;
}


- (void)dealloc {
	[_tabBarCtrl release];
	[_studyNaviCtrl release];
	
	[_studyServiceDelegate release];
	
	[super dealloc];
}


@end
