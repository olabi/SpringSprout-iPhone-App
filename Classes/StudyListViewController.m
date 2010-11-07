#import "StudyListViewController.h"


@implementation StudyListViewController

@synthesize selected = _selected;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"StudyTableViewCell";
    
    StudyListItemViewCell *cell = (StudyListItemViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		NSArray *tableViewCellObjs = [[NSBundle mainBundle] loadNibNamed:@"StudyTableViewCell" owner:self options:nil];
		cell = [tableViewCellObjs objectAtIndex:0];
    }
	
	cell.studyImage = cell.studyImage;
	cell.studyTitle = @"Objective C 스터디";
	cell.headCount = @"5 / 10";
	cell.period = @"2010/12/01 ~ 2010/12/31";
	        
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

