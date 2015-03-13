//
//  UniversalAlertView.h
//  Pods
//
//  Created by Tanakrit Saisillapee on 3/13/2558 BE.
//
//

#import <Foundation/Foundation.h>

typedef enum UniversalAlertViewButtonStyle {
    UniversalAlertViewButtonStyleDefault,
    UniversalAlertViewButtonStyleCancel
} UniversalAlertViewButtonStyle;

@interface UniversalAlertView : NSObject

@property (strong , nonatomic) UIAlertController *alertController;
@property (strong , nonatomic) UIAlertView *alert;

+(instancetype)alertWithTitle:(NSString *)title message:(NSString *)message;

-(instancetype)initAlertWithTitle:(NSString *)title message:(NSString *)message;
-(void)addButtonWithTitle:(NSString *)title style:(enum UniversalAlertViewButtonStyle)style andHandler:(void (^)(void))handlerBlock;
-(void)showAlert:(UIViewController *)viewController;

@end