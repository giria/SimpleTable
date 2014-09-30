//
//  ViewController.h
//  SimpleTable
//
//  Created by Joan Barrull Ribalta on 29/09/14.
//  Copyright (c) 2014 com.giria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, AddProtocol>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
   
@end
