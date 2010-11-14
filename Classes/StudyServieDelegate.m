#import "StudyServieDelegate.h"


@implementation StudyServieDelegate

@synthesize navigationController = _navigationController;


- (void)navigationController:(UINavigationController *)navigationController 
	  willShowViewController:(UIViewController *)viewController 
					animated:(BOOL)animated {
	NSLog(@"willShowViewController : %@.", [viewController class]);
	
	if([viewController isKindOfClass:[StudyTableViewController class]]) {
		if(isInitStudyListViewCtrl == NO) {
			isInitStudyListViewCtrl = YES;
			// 스터디뷰에 스터디가 선택되었는지 감시한다.
			[viewController addObserver:self 
							 forKeyPath:@"selected" 
								options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial 
								context:nil];			
		}					
	}	
}


- (void)navigationController:(UINavigationController *)navigationController 
	   didShowViewController:(UIViewController *)viewController 
					animated:(BOOL)animated {
	NSLog(@"didShowViewController : %@.", [viewController class]);

}


// KVO
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
	// 스터디가 선택되면...
	if([keyPath isEqualToString:@"selected"]) {
		NSIndexPath *selected = (NSIndexPath*)[change valueForKey:NSKeyValueChangeNewKey];
		if(![selected isKindOfClass:[NSNull class]]) {
			NSLog(@"selected : %@\n", selected);
			
			StudyDetailViewController *detailViewCtrl = [[StudyDetailViewController alloc] 
														 initWithNibName:@"StudyDetailViewController" 
														 bundle:nil];			
			[_navigationController pushViewController:detailViewCtrl animated:YES];
			[detailViewCtrl release];
		}
	}
}


- (void)dealloc {
	[_navigationController release];
	
	[super dealloc];
}

@end
