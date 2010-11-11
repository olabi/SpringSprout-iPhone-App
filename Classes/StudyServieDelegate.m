#import "StudyNavigationController.h"


@implementation StudyNavigationController

- (void)viewDidLoad {
	for(UIViewController *viewCtrl in self.viewControllers) {
		if([viewCtrl isKindOfClass:[StudyListViewController class]]) {
			// 스터디뷰에 스터디가 선택되었는지 감시한다.
			[viewCtrl addObserver:self 
					   forKeyPath:@"selected" 
						  options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial 
						  context:nil];					
		}
	}
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
			[self pushViewController:detailViewCtrl animated:YES];
			[detailViewCtrl release];
		}
		[selected release];
	}
}

@end
