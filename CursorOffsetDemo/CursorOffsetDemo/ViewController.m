//
//  ViewController.m
//  CursorOffsetDemo
//
//  Created by LiuShulong on 15/7/25.
//  Copyright © 2015年 LiuShulong. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+CalculateCursorOffset.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - click

- (IBAction)click:(id)sender {
    self.constraint.constant = [self.textField cursorOffset] + self.textField.frame.origin.x;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
}



@end
