#import <UIKit/UIKit.h>


@interface StudyTableViewCell : UITableViewCell {
	
	UIImageView* _studyImageView;
	UILabel* _titleLbl;
	UILabel* _headCountLbl;
	UILabel* _periodLbl;

}


@property (nonatomic, retain) IBOutlet UIImageView *studyImageView;
- (UIImage*) studyImage;
- (void) setStudyImage:(UIImage*)inStudyImage;

@property (nonatomic, retain) IBOutlet UILabel *titleLbl;
- (NSString*) studyTitle;
- (void) setStudyTitle:(NSString*)inStudyTitle;


@property (nonatomic, retain) IBOutlet UILabel *headCountLbl;
- (NSString*) headCount;
- (void) setHeadCount:(NSString*)inHeadCount;

@property (nonatomic, retain) IBOutlet UILabel *periodLbl;
- (NSString*) period;
- (void) setPeriod:(NSString*)inPeriod;


@end
