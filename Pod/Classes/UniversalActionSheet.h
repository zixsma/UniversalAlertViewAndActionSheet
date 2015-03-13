//
//  UniversalActionSheet.h
//  Pods
//
//  Created by Tanakrit Saisillapee on 3/13/2558 BE.
//
//

#import <Foundation/Foundation.h>

typedef enum UniversalActionSheetButtonStyle {
    UniversalActionSheetButtonStyleDefault,
    UniversalActionSheetButtonStyleDestructive,
    UniversalActionSheetButtonStyleCancel
} UniversalActionSheetButtonStyle;

@interface UniversalActionSheet : NSObject

@property (strong , nonatomic) UIAlertController *alertController;
@property (strong , nonatomic) UIActionSheet *actionSheet;

+(instancetype)actionSheetWithTitle:(NSString *)title message:(NSString *)message;

-(instancetype)initActionSheetWithTitle:(NSString *)title message:(NSString *)message;
-(void)addButtonWithTitle:(NSString *)title style:(enum UniversalActionSheetButtonStyle)style andHandler:(void (^)(void))handlerBlock;
-(void)showActionSheet:(UIViewController *)viewController;


@end
