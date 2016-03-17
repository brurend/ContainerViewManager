//
//  CVMFirstViewController.m
//  ContainerViewManager
//
//  Created by Bruno Rendeiro on 3/11/16.
//  Copyright © 2016 bruno.rendeiro. All rights reserved.
//

#import "CVMFirstViewController.h"
#import "CVMSecondViewController.h"

@import ContainerViewManager;

@interface CVMFirstViewController ()

@property (strong, nonatomic) ContainerViewSegueManager *container;

@end

@implementation CVMFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    _container = (ContainerViewSegueManager*)self.parentViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * Example showing how to swap from one fiew to another using the Pod class.
 */
- (IBAction)swapButton:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CVMSecondViewController *secondView = [storyboard instantiateViewControllerWithIdentifier:@"CVMSecondViewController"];
    [_container swapFromViewController:self toViewController:secondView];
}

@end
