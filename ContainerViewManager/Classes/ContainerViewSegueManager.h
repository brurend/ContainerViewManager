//
//  ContainerViewSegueManager.h
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
