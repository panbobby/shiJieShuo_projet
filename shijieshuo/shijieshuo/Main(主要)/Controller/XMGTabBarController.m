//
//  XMGTabBarController.m
//  shijieshuo
//
//  Created by 潘逸轩 on 23/11/2017.
//  Copyright © 2017年 潘逸轩studio. All rights reserved.
//

#import "XMGTabBarController.h"
#import "XMGEssenceViewController.h"
#import "XMGNewViewController.h"
#import "XMGNewViewController.h"
#import "XMGMeViewController.h"
#import "XMGPublishViewController.h"
#import "XMGFriendTrendViewController.h"
#import "UIImage+image.h"
@interface XMGTabBarController ()

@end

@implementation XMGTabBarController
+ (void)load{
   
   //获取UItabBarItem
   UITabBarItem * item = [UITabBarItem appearance];
   //设置 buttom选中标题颜色
   NSMutableDictionary * attrs = [NSMutableDictionary dictionary];
   attrs [NSForegroundColorAttributeName] = [UIColor blackColor];
   attrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
   [item setTitleTextAttributes:attrs forState:UIControlStateSelected];
   
   NSMutableDictionary * attrsNor = [NSMutableDictionary dictionary];
   attrsNor[NSFontAttributeName] = [UIFont systemFontOfSize:13];
   [item setTitleTextAttributes:attrsNor forState:UIControlStateSelected];
   
}
//+ (void)initialize{
//
//}

- (void)viewDidLoad {
   [super viewDidLoad];
   
   [self setupAllChildViewController];
   
   [self setupAllTitleButton];
   
}

- (void)setupAllChildViewController{
   //添加子控制器
   XMGEssenceViewController * esssenceVc = [[XMGEssenceViewController alloc]init];
   UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:esssenceVc];
   [self addChildViewController:nav];
   
   XMGNewViewController * newVc = [[XMGNewViewController alloc]init];
   UINavigationController *nav1 = [[UINavigationController alloc]initWithRootViewController:newVc];
   [self addChildViewController:nav1];
   
   XMGPublishViewController *publishVc = [[XMGPublishViewController alloc]init];
   [self addChildViewController:publishVc];
   
   XMGFriendTrendViewController *ftVc = [[XMGFriendTrendViewController alloc]init];
   UINavigationController * nav3 = [[UINavigationController alloc]initWithRootViewController:ftVc];
   [self addChildViewController:nav3];
   
   XMGMeViewController *meVc = [[XMGMeViewController alloc]init];
   UINavigationController * nav4 = [[UINavigationController alloc]initWithRootViewController:meVc];
   [self addChildViewController:nav4];
}

- (void)setupAllTitleButton{
   UINavigationController * nav = self.childViewControllers[0];
   nav.tabBarItem.title = @"首页";
   nav.tabBarItem.image = [UIImage imageNamed:@"1_n"];
   //快速生成一个没有被渲染的图片
   nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"1_h"];
 
   
   UINavigationController * nav1 = self.childViewControllers[1];
   nav1.tabBarItem.title = @"精华";
   nav1.tabBarItem.image = [UIImage imageNamed:@"2_n"];
   nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"2_h"];
   
   
   //   publishVc.tabBarItem.title
   XMGPublishViewController * publishVc = self.childViewControllers[2];
   publishVc.tabBarItem.image = [UIImage imageNamed:@"pub"];
   publishVc.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"pub"];
   
   
   
   UINavigationController * nav3 = self.childViewControllers[3];
   nav3.tabBarItem.title = @"消息";
   nav3.tabBarItem.image = [UIImage imageNamed:@"4_n"];
   nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"4_h"];
   
   
   UINavigationController * nav4 = self.childViewControllers[4];
   nav4.tabBarItem.title = @"我的";
   nav4.tabBarItem.image = [UIImage imageNamed:@"3_n"];
   nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@"3_h"];
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
