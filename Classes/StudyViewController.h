#import <UIKit/UIKit.h>

#import "StudyTableViewCell.h"


@interface StudyViewController : UITableViewController {

	NSIndexPath* _selected;
	
}

@property (nonatomic, retain) NSIndexPath *selected;

@end
