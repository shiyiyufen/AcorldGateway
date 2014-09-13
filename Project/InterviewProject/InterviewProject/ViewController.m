//
//  ViewController.m
//  InterviewProject
//
//  Created by JD_Acorld on 14-9-13.
//  Copyright (c) 2014年 hxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configData];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma -mark ==== Data ====
#pragma mark -

- (void)configData
{
    self.datas = [@[@"IOS 基础知识",@"IOS 控件使用",@"IOS 高级开发",@"其他编程"] mutableCopy];
}

#pragma mark -
#pragma -mark ==== TableView Delegate & DataSource ====
#pragma mark -

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"identifier";
    int row = indexPath.row;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = self.datas[row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
