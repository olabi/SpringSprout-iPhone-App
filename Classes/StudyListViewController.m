#import "StudyListViewController.h"


@implementation StudyListViewController

@synthesize selected = _selected;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"StudyTableViewCell";
    
    StudyListItemViewCell *cell = (StudyListItemViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		NSArray *tableViewCellObjs = [[NSBundle mainBundle] loadNibNamed:@"StudyTableViewCell" owner:self options:nil];
		cell = [tableViewCellObjs objectAtIndex:0];
    }
	
	if(indexPath.row == 2) {
		cell.titleLbl.text = @"Scala 스터디";
		cell.headCountLbl.text = @"10 / 15";
		cell.periodLbl.text = @"2010-10-01 ~ 2010-10-31";
		cell.stateLbl.text = @"종료";
	}
	else if(indexPath.row == 1) {
		cell.titleLbl.text = @"토스3 스터디";
		cell.headCountLbl.text = @"30 / 30";
		cell.periodLbl.text = @"2010-10-21 ~ 2011-11-20";
		cell.stateLbl.text = @"진행중";		
	}
	else {
		cell.titleLbl.text = @"ViewController 와 친해지기~";
		cell.headCountLbl.text = @"3 / 5";
		cell.periodLbl.text = @"2010-11-08 ~ 2010-11-20";
		cell.stateLbl.text = @"진행중";				
	}
	        
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	// 선택된 아이템을 저장해둔다.
	self.selected = indexPath;
}

- (void)dealloc {
	[_selected release];
	[super dealloc];
}


@end

