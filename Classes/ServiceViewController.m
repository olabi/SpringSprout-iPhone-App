#import "ServiceViewController.h"


@implementation ServiceViewController

@synthesize tabBarCtrl = _tabBarCtrl;

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view = self.tabBarCtrl.view; 
}


- (void)dealloc {
	
	[self.tabBarCtrl release];
	
    [super dealloc];
	
}


@end
