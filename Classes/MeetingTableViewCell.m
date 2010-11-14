#import "MeetingTableViewCell.h"


@implementation MeetingTableViewCell


@synthesize monthLbl = _monthLbl;
@synthesize dayLbl = _dayLbl;
@synthesize dayOfWeekLbl = _dayOfWeekLbl;
@synthesize nameLbl = _nameLbl;
@synthesize managerLbl = _managerLbl;
@synthesize stateLbl = _stateLbl;
@synthesize timeLbl = _timeLbl;
@synthesize headCountLbl = _headCountLbl;

- (void)dealloc {
	[_monthLbl release];
	[_dayLbl release];
	[_dayOfWeekLbl release];
	[_nameLbl release];
	[_managerLbl release];
	[_stateLbl release];
	[_timeLbl release];
	[_headCountLbl release];
	[super dealloc];
}


@end
