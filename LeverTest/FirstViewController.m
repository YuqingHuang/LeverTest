//
//  FirstViewController.m
//  LeverTest
//
//  Created by Huang Yuqing on 10/21/13.
//  Copyright (c) 2013 YQ. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.table.delegate = self;
    self.table.dataSource = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    sleep(3);
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(15, 131, 81, 44);
    [button1 setTitle:@"button1" forState:UIControlStateNormal];
    button1.accessibilityLabel = @"button1";
    
    [self.view addSubview:button1];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    cell.textLabel.text = @"title";
    cell.detailTextLabel.text = @"detail";
    return cell;
}


@end
