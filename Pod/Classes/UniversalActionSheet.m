//
//  UniversalActionSheet.m
//  Pods
//
//  Created by Tanakrit Saisillapee on 3/13/2558 BE.
//
//

#import "UniversalActionSheet.h"
#import "BlocksKit+UIKit.h"

@implementation UniversalActionSheet

+(instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message{
    return [[UniversalActionSheet alloc] initActionSheetWithTitle:title message:message];
}

- (instancetype)initActionSheetWithTitle:(NSString *)title message:(NSString *)message{
    self = [super init];
    if (self) {
        if ([UIAlertController class]){
            // ios 8 or higher
            self.alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
        } else {
            // ios 7 or lower
            self.actionSheet = [UIActionSheet bk_actionSheetWithTitle:title];
        }
    }
    return self;
}

-(void)addButtonWithTitle:(NSString *)title style:(enum UniversalActionSheetButtonStyle)style andHandler:(void (^)(void))handlerBlock{
    if ([UIAlertController class]){
        UIAlertActionStyle alertStyle;
        switch (style) {
            case UniversalActionSheetButtonStyleCancel:
                alertStyle = UIAlertActionStyleCancel;
                break;
            case UniversalActionSheetButtonStyleDestructive:
                alertStyle = UIAlertActionStyleDestructive;
                break;
            default:
                alertStyle = UIAlertActionStyleDefault;
                break;
        }
        UIAlertAction* button = [UIAlertAction actionWithTitle:title style:alertStyle handler:^(UIAlertAction *action) {
            handlerBlock();
        }];
        [self.alertController addAction:button];
    }else{
        switch (style) {
            case UniversalActionSheetButtonStyleCancel:
                [self.actionSheet bk_setCancelButtonWithTitle:title handler:handlerBlock];
                break;
            case UniversalActionSheetButtonStyleDestructive:
                [self.actionSheet bk_setDestructiveButtonWithTitle:title handler:handlerBlock];
                break;
            default:
                [self.actionSheet bk_addButtonWithTitle:title handler:handlerBlock];
                break;
        }
    }
}

-(void)showActionSheet:(UIViewController *)viewController{
    if ([UIAlertController class]){
        [viewController presentViewController:self.alertController animated:true completion:nil];
    }else{
        [self.actionSheet showInView:viewController.view];
    }
}

@end