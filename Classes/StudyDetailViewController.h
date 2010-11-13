//
//  StudyDetailViewController.h
//  SpringSprout-iPhone-App
//
//  Created by arawn on 10. 11. 7..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudyDetailViewController : UIViewController {

	UIViewController* _infoCtrl;
	UITableViewController* _memberCtrl;
	UITableViewController* _meetingCtrl;
	
}


@property (nonatomic, retain) IBOutlet UIViewController *infoCtrl;
@property (nonatomic, retain) IBOutlet UITableViewController *memberCtrl;
@property (nonatomic, retain) IBOutlet UITableViewController *meetingCtrl;


- (void)initNavigationToolBar;

- (void)loadInfoView;
- (void)loadMemberView;
- (void)loadMeetingView;


@end
