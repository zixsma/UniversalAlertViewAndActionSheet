//
//  UniversalAlertView.m
//  Pods
//
//  Created by Tanakrit Saisillapee on 3/13/2558 BE.
//
//

#import "UniversalAlertView.h"
#import "BlocksKit+UIKit.h"

@implementation UniversalAlertView

+(instancetype)alertWithTitle:(NSString *)title message:(NSString *)message{
    return [[UniversalAlertView alloc] initAlertWithTitle:title message:message];
}

- (instancetype)initAlertWithTitle:(NSString *)title message:(NSString *)message{
    self = [super init];
    if (self) {
        if ([UIAlertController class]){
            // ios 8 or higher
            self.alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        } else {
            // ios 7 or lower
            self.alert = [UIAlertView bk_alertViewWithTitle:title message:message];
        }
    }
    return self;
}

-(void)addButtonWithTitle:(NSString *)title style:(enum UniversalAlertViewButtonStyle)style andHandler:(void (^)(void))handlerBlock{
    if ([UIAlertController class]){
        UIAlertAction* button = [UIAlertAction actionWithTitle:title style:style == UniversalAlertViewButtonStyleDefault ? UIAlertActionStyleDefault : UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            handlerBlock();
        }];
        [self.alertController addAction:button];
    }else{
        if (style == UniversalAlertViewButtonStyleCancel) {
            [self.alert bk_setCancelButtonWithTitle:title handler:handlerBlock];
        }else{
            [self.alert bk_addButtonWithTitle:title handler:handlerBlock];
        }
    }
}

-(void)showAlert:(UIViewController *)viewController{
    if ([UIAlertController class]){
        [viewController presentViewController:self.alertController animated:true completion:nil];
    }else{
        [self.alert show];
    }
}

@end