#import "StudyListItemViewCell.h"


@implementation StudyListItemViewCell

@synthesize studyImageView = _studyImageView;
@synthesize titleLbl = _titleLbl;
@synthesize headCountLbl = _headCountLbl;
@synthesize periodLbl = _periodLbl;


- (UIImage*) studyImage {
	return self.studyImageView.image;
}
- (void) setStudyImage:(UIImage*)inStudyImage {	
	self.studyImageView.image =  inStudyImage;
}


- (NSString*) studyTitle {
	return self.titleLbl.text;
}
- (void) setStudyTitle:(NSString*)inStudyTitle {
	self.titleLbl.text = inStudyTitle;
}


- (NSString*) headCount {
	return self.headCountLbl.text;
}
- (void) setHeadCount:(NSString*)inHeadCount {
	self.headCountLbl.text = inHeadCount;
}


- (NSString*) period {
	return self.periodLbl.text;
}
- (void) setPeriod:(NSString*)inPeriod {
	self.periodLbl.text = inPeriod;
}


- (void)dealloc {
	
	[self.studyImageView release];
	[self.titleLbl release];
	[self.headCountLbl release];
	[self.periodLbl release];
	
    [super dealloc];
}


@end
