//
//  ViewController.m
//  NameAndUnreadIndicatorLabel
//
//  Created by Rajat Datta on 8/6/14.
//  Copyright (c) 2014 Rajat Datta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tagIndicatorWidthConstraint
;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tagIndicatorWidthConstraint.constant = 0;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)shrinkAction:(id)sender
{
    self.tagIndicatorWidthConstraint.constant = self.tagIndicatorWidthConstraint.constant ? 0 : 16.0;

    [UIView animateWithDuration:2.0 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
