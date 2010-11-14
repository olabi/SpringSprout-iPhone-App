#import <Foundation/Foundation.h>


@interface MeetingTableViewCell : UITableViewCell {
	
	UILabel* _monthLbl;
	UILabel* _dayLbl;
	UILabel* _dayOfWeekLbl;
	UILabel* _nameLbl;
	UILabel* _managerLbl;
	UILabel* _stateLbl;
	UILabel* _timeLbl;
	UILabel* _headCountLbl;
	
}

@property (nonatomic, retain) IBOutlet UILabel *monthLbl;
@property (nonatomic, retain) IBOutlet UILabel *dayLbl;
@property (nonatomic, retain) IBOutlet UILabel *dayOfWeekLbl;
@property (nonatomic, retain) IBOutlet UILabel *nameLbl;
@property (nonatomic, retain) IBOutlet UILabel *managerLbl;
@property (nonatomic, retain) IBOutlet UILabel *stateLbl;
@property (nonatomic, retain) IBOutlet UILabel *timeLbl;
@property (nonatomic, retain) IBOutlet UILabel *headCountLbl;



@end
