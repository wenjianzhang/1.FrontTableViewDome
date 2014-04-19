//
//  RootViewController.h
//  1.FrontTableViewDome
//
//  Created by 张文健 on 14-3-5.
//  Copyright (c) 2014年 张文健. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UITableViewDataSource>
{
@private UITableView *_tableview;
}
@property(nonatomic,retain) NSArray *listArray;

@end
