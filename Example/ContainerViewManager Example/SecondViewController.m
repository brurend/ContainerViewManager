//
//  SecondViewController.m
//  ContainerViewManager Example
//
//  Created by Bruno Rendeiro on 9/8/16.
//  Copyright © 2016 brurend. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@import ContainerViewManager;

@interface SecondViewController ()

@property (strong, nonatomic) ContainerViewSegueManager *container;

@end

@implementation SecondViewController

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
    FirstViewController *firstView = [storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    [_container swapFromViewController:self toViewController:firstView];
}


@end
