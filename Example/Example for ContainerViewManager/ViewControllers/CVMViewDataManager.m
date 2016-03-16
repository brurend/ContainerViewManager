//
//  CVMViewDataManager.m
//  ContainerViewManager
//
//  Created by Bruno Rendeiro on 3/11/16.
//  Copyright © 2016 bruno.rendeiro. All rights reserved.
//

#import "CVMViewDataManager.h"
#import "CVMFirstViewController.h"
#import "CVMSecondViewController.h"

@interface CVMViewDataManager ()

@property (strong, nonatomic) NSArray *array;

@end

@implementation CVMViewDataManager

/**
 Simple example of additionalSetup method override.
 
 If the array is empty it presents SecondViewController,
 otherwise it presentes FirstViewController.
 */
-(void)additionalSetup{
    _array = @[@"1",@"2"];
    
    self.currentSegueIdentifier = @"FirstViewController";

    if ([_array count] != 0) {
        self.currentSegueIdentifier = @"FirstViewController";
        self.parent.navigationItem.title = @"FIRST";
    }
    else {
        self.currentSegueIdentifier = @"SecondViewController";
        self.parent.navigationItem.title = @"SECOND";
    }
    [super additionalSetup];

}



@end
