//
//  StudyMeetingTableViewDelegate.m
//  SpringSprout-iPhone-App
//
//  Created by arawn on 10. 11. 7..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "StudyMeetingViewController.h"


@implementation StudyMeetingViewController


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"UITableViewCellStyleValue1";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
		cell = [[[UITableViewCell alloc] 
				 initWithStyle:UITableViewCellStyleValue1 
				 reuseIdentifier:CellIdentifier] 
				autorelease];
		
    }
	
	cell.textLabel.text = @"모임";
	cell.detailTextLabel.text = @"";
	
    return cell;
}


@end
