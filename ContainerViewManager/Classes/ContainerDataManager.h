//
//  ContainerDataManager.h
//
//  Copyright (c) 2016 Bruno Rendeiro
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

#import <Foundation/Foundation.h>
@class ContainerViewSegueManager;

/**
 * Completion block declaration. Is used to make sure the containerView wont attempt
 * to performSegue before any data is being fetched asynchronously.
 */
typedef void(^CompletionBlock)(BOOL finished);

@interface ContainerDataManager : NSObject

/**
 *  Container data init method, is called by ContainerViewSegueManager and calls performSegue method.
 *
 *  @param parent    Container parent ViewController.
 *  @param container Reference to its containerView.
 *
 *  @return ContainerDataManager instance.
 */
-(instancetype)initWithParent:(UIViewController *)parent andContainer:(ContainerViewSegueManager *)container;

/**
 *  In this method all of the application set up should
 */
-(void)additionalSetup __attribute__((objc_requires_super));

/**
 *  Method responsible for performing the segue.
 *  This method will not try to perform the segue before any asynchronous fetch
 *  is still executing in fetchAPIDataWithCompletion.
 */
-(void)performSegue;

/**
 *  Any asynchronous call should happen in this method to make sure
 *  performSegue won't execute before everything is ready for it.
 *
 *  @param finished Should be YES if everything was executed as expected.
 */
-(void)fetchAPIDataWithCompletion:(CompletionBlock)finished;

/**
 * Reference to its parent ViewController class.
 */
@property (weak, nonatomic) UIViewController *parent;

/**
 * Reference to its ContainverViewSegueManager class.
 */
@property (weak, nonatomic) ContainerViewSegueManager *container;

/**
 * This is the segue Identifier that will be used by the performSegue method.
 * Your class should set it with your own segue set in the Interface Builder.
 */
@property (weak, nonatomic) NSString *currentSegueIdentifier;


@end

