#import <UIKit/UIKit.h>


@interface StudyListItemViewCell : UITableViewCell {
	
	UILabel* _titleLbl;
	UILabel* _headCountLbl;
	UILabel* _periodLbl;
	UILabel* _stateLbl;

}

@property (nonatomic, retain) IBOutlet UILabel *titleLbl;
@property (nonatomic, retain) IBOutlet UILabel *headCountLbl;
@property (nonatomic, retain) IBOutlet UILabel *periodLbl;
@property (nonatomic, retain) IBOutlet UILabel *stateLbl;

@end
