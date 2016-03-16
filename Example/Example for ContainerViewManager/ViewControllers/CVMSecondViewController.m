//
//  CVMSecondViewController.m
//  ContainerViewManager
//
//  Created by Bruno Rendeiro on 3/11/16.
//  Copyright © 2016 bruno.rendeiro. All rights reserved.
//

#import "CVMSecondViewController.h"
#import "CVMFirstViewController.h"

@import ContainerViewManager;

@interface CVMSecondViewController ()

@property (strong, nonatomic) ContainerViewSegueManager *container;

@end

@implementation CVMSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    _container = (ContainerViewSegueManager*)self.parentViewController;
    self.view.backgroundColor = [UIColor greenColor];
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
    CVMFirstViewController *firstView = [storyboard instantiateViewControllerWithIdentifier:@"CVMFirstViewController"];
    [_container swapFromViewController:self toViewController:firstView];
}

@end
