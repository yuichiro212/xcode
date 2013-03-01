//
//  ViewController.m
//  TableViewSample
//
//  Created by fujita taisuke on 2012/11/19.
//  Copyright (c) 2012年 Revolution 9. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *groupNames;
    NSArray *groups;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    groupNames = @[@"ビートルズ", @"レッド・ツェッペリン"];
    groups = @[
        @[@"ジョン・レノン", @"ポール・マッカートニー", @"ジョージ・ハリスン", @"リチャード・スターキー"],
        @[@"ジミー・ペイジ", @"ロバート・プラント", @"ジョン・ポール・ジョーンズ", @"ジョン・ボーナム"]
        ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [groups[section] count ];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [groupNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // NSLog(@"%@#%@", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSArray *members = groups[indexPath.section];
    cell.textLabel.text = members[indexPath.row];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UITableViewHeaderFooterView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"Header"];
    if (!view) {
        view = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"Header"];
    }
    view.textLabel.text = groupNames[section];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 44;
}

@end
