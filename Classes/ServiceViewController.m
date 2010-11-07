#import "ServiceViewController.h"


@implementation ServiceViewController

@synthesize tabBarCtrl = _tabBarCtrl;

- (void)viewDidLoad {
    [super viewDidLoad];
	self.view = _tabBarCtrl.view; 
}


- (void)dealloc {
	[_tabBarCtrl release];
	[super dealloc];
	
}


@end
