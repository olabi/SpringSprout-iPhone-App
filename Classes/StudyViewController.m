#import "StudyViewController.h"


@implementation StudyViewController


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"StudyTableViewCell";
    
    StudyTableViewCell *cell = (StudyTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
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
	NSLog(@"%@", indexPath);
}

- (void)dealloc {
    [super dealloc];
}


@end

