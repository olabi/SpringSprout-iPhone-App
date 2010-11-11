#import <UIKit/UIKit.h>

#import "StudyServieDelegate.h"


@interface ServiceViewController : UIViewController {

	UITabBarController* _tabBarCtrl;
	UINavigationController* _studyNaviCtrl;
	
	
@private
	StudyServieDelegate* _studyServiceDelegate;
}

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarCtrl;
@property (nonatomic, retain) IBOutlet UINavigationController *studyNaviCtrl;

@end
