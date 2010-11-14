#import "StudyInfoViewController.h"


@implementation StudyInfoViewController

@synthesize nameLbl = _nameLbl;
@synthesize introductionTxt = _introductionTxt;
@synthesize managerLbl = _managerLbl;
@synthesize meetingCountLbl = _meetingCountLbl;
@synthesize headCountLbl = _headCountLbl;
@synthesize periodLbl = _periodLbl;
@synthesize stateLbl = _stateLbl;	


- (void)dealloc {
	[_nameLbl release];
	[_introductionTxt release];
	[_managerLbl release];
	[_meetingCountLbl release];
	[_headCountLbl release];
	[_periodLbl release];
	[_stateLbl release];
    [super dealloc];
}


@end
