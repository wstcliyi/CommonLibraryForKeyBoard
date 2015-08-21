//
//  SecondViewController.m
//  CommonLibraryForKeyboard
//
//  Created by 李弋 on 8/20/15.
//  Copyright (c) 2015 LeeYi. All rights reserved.
//

#import "SecondViewController.h"
#import "KeyBoard.h"
@interface SecondViewController ()<UITextFieldDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.secondTextField.delegate = self;
    [KeyBoard initwithKeyboard:self scrollView:_scrollViewSecond bottomConstain:_bottomC bottomUIItem:_bottomLabel];
    
    [KeyBoard setTextField:_secondTextField];
    //    bottomConstrain = [[NSLayoutConstraint alloc] init];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose
}




#pragma mark < Write the keyboard Action >
-(void)keyboardWillShow:(NSNotification *)aNotification{
    NSDictionary *userInfo = [aNotification userInfo];
    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey];
    CGRect keyboardRect = [aValue CGRectValue];
    [KeyBoard keyboardWillShow:keyboardRect];
}

-(void)keyboardWillHide:(NSNotification *)aNOtification{
    [KeyBoard keyboardWillHide: YES];
}

-(void)handleSingleTap:(UITapGestureRecognizer *)gestureRecognizer{
    [KeyBoard handleSingleTap:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
