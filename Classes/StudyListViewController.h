#import <UIKit/UIKit.h>

#import "StudyListItemViewCell.h"


@interface StudyListViewController : UITableViewController {

	NSIndexPath* _selected;
	
}

@property (nonatomic, retain) NSIndexPath *selected;

@end
