//
//  KeyBoard.h
//  CommonLibraryForKeyboard
//
//  Created by 李弋 on 8/20/15.
//  Copyright (c) 2015 LeeYi. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@class UIViewController,UIScrollView,NSLayoutConstraint;

@interface KeyBoard : UIViewController

//@property (strong,nonatomic) CGFloat bottomHeightForScroll;




- (void)initwithView;
- (void)initwithScrollView;
//在viewDidLoad 中初始化Keyboard
+ (void)initwithKeyboard:(UIViewController *)currentView scrollView:(UIScrollView*)currentScrollView bottomConstain:(NSLayoutConstraint *)bottomHeight bottomUIItem:(UIView *) bottomItem;

//当控件改变respond 时候，切换textField
+ (void)setTextField:(UITextField *)textField;

//在ViewController中，［keyboard keyboardWill＊＊］使用，eg：

//
//#pragma mark < Write the keyboard Action >
//-(void)keyboardWillShow:(NSNotification *)aNotification{
//    NSDictionary *userInfo = [aNotification userInfo];
//    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey];
//    CGRect keyboardRect = [aValue CGRectValue];
//    [KeyBoard keyboardWillShow:keyboardRect];
//}
//
//-(void)keyboardWillHide:(NSNotification *)aNOtification{
//    [KeyBoard keyboardWillHide: YES];
//}
//
//-(void)handleSingleTap:(UITapGestureRecognizer *)gestureRecognizer{
//    [KeyBoard handleSingleTap:YES];
//}


+ (void)keyboardWillShow: (CGRect)keboardRect;
+ (void)keyboardWillHide:(BOOL) right;
+ (void)handleSingleTap:(BOOL) right;

@end

