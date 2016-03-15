//
//  ContainerViewSegueManager.h
//  Pods
//
//  Created by Bruno Rendeiro on 3/11/16.
//
//

#import <UIKit/UIKit.h>

/**
 This class is responsible for perfoming the segue to the desired view, in the interface builder
 this class should be set as your containerView Custom Class. 
 You don't to override any of its methods.
 */


@interface ContainerViewSegueManager : UIViewController

/**
 Reference to ContainerDataManager class.
 */
@property (strong, nonatomic) id containerDataClass;

/**
 This method can be used to swap from one of the container childs to another.
 */
-(void)swapFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController;

@end
