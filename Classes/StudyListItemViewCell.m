#import "StudyListItemViewCell.h"


@implementation StudyListItemViewCell

@synthesize titleLbl = _titleLbl;
@synthesize headCountLbl = _headCountLbl;
@synthesize periodLbl = _periodLbl;
@synthesize stateLbl = _stateLbl;


- (void)dealloc {
	
	[_titleLbl release];
	[_headCountLbl release];
	[_periodLbl release];
	[_stateLbl release];
	
    [super dealloc];
}


@end
