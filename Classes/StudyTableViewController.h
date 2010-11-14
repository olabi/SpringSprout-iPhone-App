#import <UIKit/UIKit.h>

#import "StudyTableViewCell.h"


@interface StudyTableViewController : UITableViewController {

	NSIndexPath* _selected;
	
}

@property (nonatomic, retain) NSIndexPath *selected;

@end
