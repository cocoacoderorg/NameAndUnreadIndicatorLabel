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
@property (weak, nonatomic) IBOutlet UIView *tagAreaView;
@property (weak, nonatomic) IBOutlet UIButton *tagButton;
@property (weak, nonatomic) IBOutlet UILabel *imageLabel;
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
    CGFloat newWidth;
    if (self.tagIndicatorWidthConstraint.constant == 16.0) {
        newWidth = 1.0;
        //[self.tagButton setTitle:@"Tag" forState:UIControlStateNormal];
    }
    else {
        newWidth = 16.0;
        //[self.tagButton setTitle:@"Untag" forState:UIControlStateNormal];
    }
    BOOL rc = [self.tagAreaView hasAmbiguousLayout];

    //[self.tagAreaView layoutIfNeeded];
    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.imageLabel.text = [self.imageLabel.text stringByAppendingString:@"!"];
        [self.imageLabel setNeedsLayout];
        [self.imageLabel layoutIfNeeded];
        self.tagIndicatorWidthConstraint.constant = newWidth;
        [self.tagAreaView setNeedsLayout];
        [self.tagAreaView layoutIfNeeded];

    } completion:^(BOOL finished) {
    }];
}

@end
