
//
//  KeyBoard.m
//  CommonLibraryForKeyboard
//
//  Created by 李弋 on 8/20/15.
//  Copyright (c) 2015 LeeYi. All rights reserved.
//

#import "KeyBoard.h"

NSLayoutConstraint *bottomConstrain;
UIViewController *mirrCurrentView;
UIView *mirrBottomItem;
UIScrollView *mirrScrollView;
UITextField *mirrTextField;

@implementation KeyBoard
-(void)initwithView{};
-(void)initwithScrollView{};
+(void)setTextField:(UITextField *)textField{
    mirrTextField = textField;
};
+ (void)initwithKeyboard:(UIViewController *)currentView scrollView:(UIScrollView*)currentScrollView bottomConstain:(NSLayoutConstraint *)bottomHeight bottomUIItem:(UIView *)bottomItem{

//    bottomConstrain = [[NSLayoutConstraint alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:currentView
                                             selector:@selector(keyboardWillShow:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:currentView
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    UITapGestureRecognizer *singletap = [[UITapGestureRecognizer alloc] initWithTarget:currentView
                                                                                action:@selector(handleSingleTap:)];
    [singletap setNumberOfTapsRequired:1];
    [currentView.view addGestureRecognizer:singletap];
    
    bottomConstrain = bottomHeight;
    mirrCurrentView = currentView;
    mirrBottomItem = bottomItem;
    mirrScrollView = currentScrollView;
};

+(void)keyboardWillShow:(CGRect )keyboardRect{
    int heightOfKeyboard = keyboardRect.size.height;
    int heightFromBottomToFindPasswordButton = mirrCurrentView.view.bounds.size.height - (mirrBottomItem.frame.origin.y + mirrBottomItem.frame.size.height);
    int heightDifference = heightOfKeyboard < heightFromBottomToFindPasswordButton? 0 : heightOfKeyboard - heightFromBottomToFindPasswordButton + 10;
    if (heightFromBottomToFindPasswordButton < heightOfKeyboard + 10) {
        bottomConstrain.constant = heightOfKeyboard + 10;
        mirrScrollView.contentOffset = CGPointMake(0, heightDifference);
//        mirrScrollView.setNeedsDisplay;
        NSLog(@"%f",bottomConstrain.constant);
        
    }
}
+ (void)keyboardWillHide:(BOOL) right{
    [mirrTextField resignFirstResponder];
    bottomConstrain.constant = 0;
    mirrScrollView.contentOffset = CGPointMake(0,0);
}
+ (void)handleSingleTap:(BOOL) right{
    [mirrTextField resignFirstResponder];
}
@end


