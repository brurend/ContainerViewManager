//
//  MyContainerData.m
//  ContainerViewManager Example
//
//  Created by Bruno Rendeiro on 9/8/16.
//  Copyright © 2016 brurend. All rights reserved.
//

#import "MyContainerData.h"

@interface MyContainerData ()

@property (strong, nonatomic) NSArray *array;

@end

@implementation MyContainerData

/**
 *   Simple example of additionalSetup method override. [super additionalSetup] should always
 *   be called in the end of this method
 *
 *   If the array is empty it presents SecondViewController,
 *   otherwise it presentes FirstViewController.
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
