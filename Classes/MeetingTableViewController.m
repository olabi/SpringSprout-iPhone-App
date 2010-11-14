#import "MeetingTableViewController.h"


@implementation MeetingTableViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"MeetingTableViewCell";
    
    MeetingTableViewCell *cell = (MeetingTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"MeetingTableViewCell" owner:nil options:nil];
		cell = [topLevelObjects objectAtIndex:0];
    }
	
	cell.monthLbl.text = @"11월";
	cell.dayLbl.text = @"14";
	cell.dayOfWeekLbl.text = @"일요일";
	cell.nameLbl.text = @"제 1장, 반갑습니다.";
	cell.managerLbl.text = @"아롱";
	cell.stateLbl.text = @"진행중";
	cell.timeLbl.text = @"10:30 ~ 13:30";
	cell.headCountLbl.text = @"10 / 10";
	
    return cell;
}


@end
