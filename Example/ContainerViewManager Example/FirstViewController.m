//
//  FirstViewController.m
//  ContainerViewManager Example
//
//  Created by Bruno Rendeiro on 9/8/16.
//  Copyright © 2016 brurend. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import <ContainerViewManager/ContainerViewSegueManager.h>

@interface FirstViewController ()

@property (strong, nonatomic) ContainerViewSegueManager *container;

@end

@implementation FirstViewController

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
    SecondViewController *secondView = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [_container swapFromViewController:self toViewController:secondView];
}


@end
