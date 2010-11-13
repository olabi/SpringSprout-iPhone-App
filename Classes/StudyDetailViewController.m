//
//  StudyDetailViewController.m
//  SpringSprout-iPhone-App
//
//  Created by arawn on 10. 11. 7..
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "StudyDetailViewController.h"


@implementation StudyDetailViewController

@synthesize infoCtrl = _infoCtrl;
@synthesize memberCtrl = _memberCtrl;
@synthesize meetingCtrl = _meetingCtrl;


- (void)viewDidLoad {
    [super viewDidLoad];
	[self initNavigationToolBar];
	[self loadInfoView];
}


- (void)initNavigationToolBar {
	// 툴바 생성
	UIToolbar* toolbar = [[UIToolbar alloc]
						  initWithFrame:CGRectMake(0.0f, 0.0f, 190.0f, 44.01f)];
	// 툴바가 가지는 1px 의 상단 라인을 없애고 네비게이션의 색상과 동일하게 맞춘다.
	toolbar.clearsContextBeforeDrawing = NO;
	toolbar.clipsToBounds = NO;
	toolbar.tintColor = self.navigationController.navigationBar.tintColor;
	toolbar.barStyle = -1;	
	
	// 스터디 소개 버튼
	UIBarButtonItem *infoButton = [[UIBarButtonItem alloc]
								   initWithTitle:@"소개" 
								   style:UIBarButtonItemStyleBordered
								   target:self
								   action:@selector(loadInfoView)];
	
	// 참가인원 버튼
	UIBarButtonItem *memberButton = [[UIBarButtonItem alloc]
									 initWithTitle:@"참가인원" 
									 style:UIBarButtonItemStyleBordered
							         target:self
							         action:@selector(loadMemberView)];
	
	// 모임 버튼
	UIBarButtonItem *meetingButton = [[UIBarButtonItem alloc]
									  initWithTitle:@"모임" 
									  style:UIBarButtonItemStyleBordered
									  target:self
									  action:@selector(loadMeetingView)];
		
	[toolbar setItems:[NSArray arrayWithObjects:infoButton,memberButton,meetingButton,nil] animated:NO];
	
	// 네비게이션에 버튼 툴바 추가
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
											  initWithCustomView:toolbar];
	
	[infoButton release];
	[memberButton release];
	[meetingButton release];	
	[toolbar release];
}


- (void)loadInfoView {
	self.view = _infoCtrl.view;
}
- (void)loadMemberView {
	self.view = _memberCtrl.view;
}
- (void)loadMeetingView {
	self.view = _meetingCtrl.view;
}


- (void)dealloc {
	[_infoCtrl release];
	[_memberCtrl release];
	[_meetingCtrl release];
    [super dealloc];
}


@end
