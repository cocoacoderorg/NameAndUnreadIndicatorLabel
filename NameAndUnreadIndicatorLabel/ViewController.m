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
@property (weak, nonatomic) IBOutlet UIButton *tagButton;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tagIndicatorWidthConstraint.constant = 0;
    [self.tagButton setTitle:@"Tag" forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)shrinkAction:(id)sender
{
    if (self.tagIndicatorWidthConstraint.constant) {
        self.tagIndicatorWidthConstraint.constant = 0.0;
        [self.tagButton setTitle:@"Tag" forState:UIControlStateNormal];
    }
    else {
        self.tagIndicatorWidthConstraint.constant = 16.0;
        [self.tagButton setTitle:@"Untag" forState:UIControlStateNormal];
    }

#if 0
    [UIView animateWithDuration:2.0 animations:^{
        [self.view layoutIfNeeded];
    }];
#endif
}

@end
