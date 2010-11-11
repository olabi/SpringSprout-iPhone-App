#import <Foundation/Foundation.h>

#import "StudyListViewController.h"
#import "StudyDetailViewController.h"

@interface StudyServieDelegate : NSObject<UINavigationControllerDelegate> {

	UINavigationController* _navigationController;
	
	
@private
	BOOL isInitStudyListViewCtrl; 
}

@property(nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
