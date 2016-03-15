//
//  ContainerDataManager.m
//  Pods
//
//  Created by Bruno Rendeiro on 3/11/16.
//
//

#import "ContainerDataManager.h"
#import "ContainerViewSegueManager.h"

@implementation ContainerDataManager

-(instancetype)initWithParent:(UIViewController *)parent andContainer:(ContainerViewSegueManager *)container {
    [super self];
    if (self) {
        self.parent = parent;
        self.container = container;
        [self performSegue];
    }
    return self;
}

-(void)additionalSetup{

}

-(void)performSegue {
    [self additionalSetup];
    [self fetchAPIDataWithCompletion:^(BOOL finished) {
        if (finished)
            [self.container performSegueWithIdentifier:self.currentSegueIdentifier sender:nil];
    }];}

-(void)fetchAPIDataWithCompletion:(CompletionBlock)finished {
    finished(YES);
}

@end
