//
//  ContainerDataManager.h
//  Pods
//
//  Created by Bruno Rendeiro on 3/11/16.
//
//

#import <Foundation/Foundation.h>
@class ContainerViewSegueManager;

/**
 Completion block declaration. Is used to make sure the containerView wont attempt
 to performSegue before any data is being fetched asynchronously.
 */
typedef void(^CompletionBlock)(BOOL finished);

/**
 Delegate with ContainerDataManager methods, your class should conform to this protocol.
 */
@protocol ContainerViewManagerDelegate <NSObject>

/**
 This method should be overridden with your application setup.
 Here is where you should call your methods to decide which
 segue identifier should be performed next.
 */
@required
-(void)additionalSetup;

@optional
/**
 This method should be used if your class is doing any asynchronous request.
 If you do not use this method your performSegue method may be called before
 the request finished and may crash the application.
 */
-(void)fetchAPIDataWithCompletion:(CompletionBlock)finished;

/**
 This is the class init, it will call the SegueManager performSegue. In most
 cases this method doesn't need to be overridden.
 */
-(instancetype)initWithParent:(UIViewController *)parent andContainer:(ContainerViewSegueManager *)container;

@end

@interface ContainerDataManager : NSObject <ContainerViewManagerDelegate>

/**
 Reference to its parent ViewController class.
 */
@property (weak, nonatomic) UIViewController *parent;

/**
 Reference to its ContainverViewSegueManager class.
 */
@property (weak, nonatomic) ContainerViewSegueManager *container;

/**
 This is the segue Identifier that will be used by the performSegue method.
 Your class should set it with your own segue set in the Interface Builder.
 */
@property (weak, nonatomic) NSString *currentSegueIdentifier;

@end
