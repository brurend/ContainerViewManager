//
//  CVMViewController.m
//  ContainerViewManager
//
//  Created by bruno.rendeiro on 03/11/2016.
//  Copyright (c) 2016 bruno.rendeiro. All rights reserved.
//

#import "CVMViewController.h"
#import "CVMViewDataManager.h"

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

/**
 *   The view controller with the container view must have a weak reference to the ContainerViewSegueManager class,
 *   so in the prepare for segue method you will be able to pass the reference to your ContainerDataManager subclass
 *   to the SegueManager.
 *
 *  @param segue
 *  @param sender
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"embedSegue"]) {
        self.containerView = (ContainerViewSegueManager*)segue.destinationViewController;
        self.containerView.containerDataClass = [CVMViewDataManager class];
    }
}


/**
 *   shouldPerformSegueWithIdentifier returns YES by default so the view will always call prepareForSegue when initiated.
 *
 *  @param identifier Should be the containerView segue
 *  @param sender     Self
 *
 *  @return Should always be YES
 */
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    return YES;
}
@end
