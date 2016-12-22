//
//  ViewController.m
//  OC-SegmentControlPlusTabViewDemo
//
//  Created by HTC on 2016/12/22.
//  Copyright © 2016年 iHTCboy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (weak) IBOutlet NSSegmentedControl *segmentedControl;

@property (weak) IBOutlet NSTabView *tabView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupViews];
}

- (void)setupViews{
    self.segmentedControl.segmentCount = self.tabView.tabViewItems.count;
    self.segmentedControl.selectedSegment = [self.tabView indexOfTabViewItem:self.tabView.selectedTabViewItem];
}


- (IBAction)segmentedControlClicked:(NSSegmentedControl *)sender {
    [self.tabView selectTabViewItemAtIndex:sender.selectedSegment];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
