//
//  RootViewController.m
//  1.FrontTableViewDome
//
//  Created by 张文健 on 14-3-5.
//  Copyright (c) 2014年 张文健. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView
{
    UIView *view=[[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    self.view=view;
    
    self.listArray=[UIFont familyNames];
    
    _tableview=[[UITableView alloc] initWithFrame:view.bounds style:UITableViewStylePlain];
    
    _tableview.dataSource=self;
    
    [self.view addSubview:_tableview];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [self.listArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *cellIdentifier=@"cell";
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSString *fontName=self.listArray[indexPath.row];
    cell.textLabel.text=fontName;
    cell.textLabel.font=[UIFont fontWithName:fontName size:12];
    return  cell;
}

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;              // Default is 1 if not
//{
//}

-(void)dealloc
{
    _tableview=Nil;
}

@end
