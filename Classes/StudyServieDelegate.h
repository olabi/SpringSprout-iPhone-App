#import <Foundation/Foundation.h>

#import "StudyTableViewController.h"
#import "StudyDetailViewController.h"

@interface StudyServieDelegate : NSObject<UINavigationControllerDelegate> {

	UINavigationController* _navigationController;
	
	
@private
	BOOL isInitStudyListViewCtrl; 
}

@property(nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
