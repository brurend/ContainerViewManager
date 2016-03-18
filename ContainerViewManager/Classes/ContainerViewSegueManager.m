//
//  ContainerViewSegueManager.m
//  Pods
//
//  Created by Bruno Rendeiro on 3/11/16.
//
//

#import "ContainerViewSegueManager.h"
#import "ContainerDataManager.h"

@interface ContainerViewSegueManager ()

@end

@implementation ContainerViewSegueManager

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [self setUpDataManagerClass:_containerDataClass];
}

-(void)setUpDataManagerClass:(id)class {
    if ([class isSubclassOfClass:[ContainerDataManager class]]){
        class = [[class alloc] initWithParent:self.parentViewController andContainer:self];
    }
}

#pragma mark - Segue handle methods
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([self.childViewControllers count] > 0) {
        [self swapFromViewController:[self.childViewControllers objectAtIndex:0] toViewController:segue.destinationViewController];
    }
    else {
        [self addChildViewController:segue.destinationViewController];
        segue.destinationViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        [self.view addSubview:segue.destinationViewController.view];
        [segue.destinationViewController didMoveToParentViewController:self];
    }
}

-(void)swapFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController {
    toViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [fromViewController willMoveToParentViewController:nil];
    [self addChildViewController:toViewController];
    [self transitionFromViewController:fromViewController toViewController:toViewController duration:0 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
        [fromViewController removeFromParentViewController];
        [toViewController didMoveToParentViewController:self];
    }];
}

@end
