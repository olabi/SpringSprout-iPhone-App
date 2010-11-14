#import <UIKit/UIKit.h>


@interface StudyInfoViewController : UIViewController {
	
	UILabel* _nameLbl;
	UITextView* _introductionTxt;
	UILabel* _managerLbl;
	UILabel* _meetingCountLbl;
	UILabel* _headCountLbl;
	UILabel* _periodLbl;
	UILabel* _stateLbl;	
	
}

@property (nonatomic, retain) IBOutlet UILabel *nameLbl;
@property (nonatomic, retain) IBOutlet UITextView *introductionTxt;
@property (nonatomic, retain) IBOutlet UILabel *managerLbl;
@property (nonatomic, retain) IBOutlet UILabel *meetingCountLbl;
@property (nonatomic, retain) IBOutlet UILabel *headCountLbl;
@property (nonatomic, retain) IBOutlet UILabel *periodLbl;
@property (nonatomic, retain) IBOutlet UILabel *stateLbl;	

@end
