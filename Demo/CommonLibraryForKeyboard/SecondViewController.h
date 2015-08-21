//
//  SecondViewController.h
//  CommonLibraryForKeyboard
//
//  Created by 李弋 on 8/20/15.
//  Copyright (c) 2015 LeeYi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewSecond;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomC;
@property (weak, nonatomic) IBOutlet UILabel *bottomLabel;
@property (weak, nonatomic) IBOutlet UIButton *asdf;

@end
