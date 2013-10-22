//
//  FirstViewController.h
//  LeverTest
//
//  Created by Huang Yuqing on 10/21/13.
//  Copyright (c) 2013 YQ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *table;

@end
