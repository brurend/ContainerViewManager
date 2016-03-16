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

-(void)additionalSetup __attribute__((objc_requires_super));

@end

