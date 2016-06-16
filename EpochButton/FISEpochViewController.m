//
//  FISEpochViewController.m
//  EpochButton
//
//  Created by Ryan Cohen on 6/16/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISEpochViewController.h"

@interface FISEpochViewController ()

@property (weak, nonatomic) IBOutlet UILabel *epochLabel;

- (IBAction)setEpochTime:(id)sender;

@end

@implementation FISEpochViewController

- (IBAction)setEpochTime:(id)sender {
    self.epochLabel.text = [NSString stringWithFormat:@"%f", [self epochMethod]];
}

- (CGFloat)epochMethod {
    return [[NSDate date] timeIntervalSince1970];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
