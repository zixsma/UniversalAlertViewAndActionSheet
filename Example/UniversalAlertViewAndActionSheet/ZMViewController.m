//
//  ZMViewController.m
//  UniversalAlertViewAndActionSheet
//
//  Created by Tanakrit Saisillapee on 03/13/2015.
//  Copyright (c) 2014 Tanakrit Saisillapee. All rights reserved.
//

#import "ZMViewController.h"

@interface ZMViewController ()

@end

@implementation ZMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertViewTap:(UIButton *)sender {
    UniversalAlertView *alertView = [[UniversalAlertView alloc] initAlertWithTitle:@"Welcome to Universal AlertView" message:@"This is an example of alertview with default and cancel button types."];
    [alertView addButtonWithTitle:@"Default" style:UniversalAlertViewButtonStyleDefault andHandler:^{
        NSLog(@"Hi there, this is a nslog from handler default button click");
    }];
    [alertView addButtonWithTitle:@"Cancel" style:UniversalAlertViewButtonStyleCancel andHandler:^{
        NSLog(@"Hi there, this is a nslog from handler destructive button click");
    }];
    [alertView showAlert:self];
}

- (IBAction)actionSheetTap:(UIButton *)sender {
    UniversalActionSheet *actionSheet = [[UniversalActionSheet alloc] initActionSheetWithTitle:@"Welcome to Universal ActionSheet" message:@"This is an example of actionsheet with default, destructive and cancel button types."];
    [actionSheet addButtonWithTitle:@"Default" style:UniversalActionSheetButtonStyleDefault andHandler:^{
        NSLog(@"Hi there, this is a nslog from handler default button click");
    }];
    [actionSheet addButtonWithTitle:@"Destructive" style:UniversalActionSheetButtonStyleDestructive andHandler:^{
        NSLog(@"Hi there, this is a nslog from handler destructive button click");
    }];
    [actionSheet addButtonWithTitle:@"Cancel" style:UniversalActionSheetButtonStyleCancel andHandler:^{
        NSLog(@"Hi there, this is a nslog from handler destructive button click");
    }];
    [actionSheet showActionSheet:self];
}


@end
