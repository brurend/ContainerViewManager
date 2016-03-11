//
//  CVMViewController.m
//  ContainerViewManager
//
//  Created by bruno.rendeiro on 03/11/2016.
//  Copyright (c) 2016 bruno.rendeiro. All rights reserved.
//

#import "CVMViewController.h"

@interface CVMViewController ()

@property (weak, nonatomic) ContainerViewSegueManager *containerView;

@end

@implementation CVMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"embedSegue"]) {
        self.containerView = (ContainerViewSegueManager*)segue.destinationViewController;
    }
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    return YES;
}
@end
