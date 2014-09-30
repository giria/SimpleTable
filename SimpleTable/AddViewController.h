//
//  AddViewController.h
//  SimpleTable
//
//  Created by Joan Barrull Ribalta on 29/09/14.
//  Copyright (c) 2014 com.giria. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AddViewController;


@protocol AddProtocol <NSObject>
- (void)addItemViewController:(AddViewController *)controller addItem:(NSString *)item;
@end

@interface AddViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) id <AddProtocol> delegado;
@property NSMutableArray * valuesOfItems;

@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)addToArray:(id)sender;

@end
