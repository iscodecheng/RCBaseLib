//
//  RCTabBarViewController.m
//  RCBaseLib
//
//  Created by chenglong on 2023/12/29.
//

#import "RCTabBarViewController.h"
#import "UIColor+RCExtension.h"

@interface RCTabBarViewController ()

@end

@implementation RCTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *defaultColor = [UIColor colorWithString:(@"#969BBA")];
    UIColor *selectColor = [UIColor colorWithString:(@"#0D94FF")];
    
    NSDictionary *normalAttrs = @{NSForegroundColorAttributeName:defaultColor, NSFontAttributeName:[UIFont systemFontOfSize:10 weight:UIFontWeightMedium]};
    NSDictionary *selectedAttrs = @{NSForegroundColorAttributeName:selectColor, NSFontAttributeName:[UIFont systemFontOfSize:10 weight:UIFontWeightMedium]};
    
    if (@available(iOS 15.0, *)) {
        UITabBarAppearance *appearance = [UITabBarAppearance new];
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = normalAttrs;
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = selectedAttrs;
        [appearance configureWithOpaqueBackground];
        appearance.backgroundColor = UIColor.whiteColor;
        self.tabBar.standardAppearance = appearance;
        self.tabBar.scrollEdgeAppearance = appearance;
    } else {
        UITabBar.appearance.unselectedItemTintColor = defaultColor;
        UITabBar.appearance.tintColor = selectColor;
    }

    [self addChileVC];
}


- (void)addChileVC {
    UIViewController *liveRoomViewController = [[NSClassFromString(@"RCCreateVideoLiveRoomViewController") alloc] init];
    [self addViewControllerTitle:@"直播间" imageName:@"Tab_home_normal" selectImageName:@"Tab_home_sel" viewcontroller:liveRoomViewController];
    
    UIViewController *messagViewController = [[NSClassFromString(@"RCMessageViewController") alloc] init];
    [self addViewControllerTitle:@"消息" imageName:@"Tab_home_normal" selectImageName:@"Tab_home_sel" viewcontroller:messagViewController];
    
    UIViewController *myInfoViewController = [[NSClassFromString(@"RCUserInfoViewController") alloc] init];
    [self addViewControllerTitle:@"我的" imageName:@"Tab_mine_normal" selectImageName:@"Tab_mine_sel" viewcontroller:myInfoViewController];
}

- (void)addViewControllerTitle:(NSString*)title imageName:(NSString*)imageName selectImageName:(NSString*)selectImageName viewcontroller:(UIViewController*)viewcontroller {
    
    UINavigationController *navigationVC = [[UINavigationController alloc] initWithRootViewController:viewcontroller];
    viewcontroller.title = title;
    viewcontroller.tabBarItem.image = [UIImage imageNamed:imageName];
    viewcontroller.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:navigationVC];
    
}


@end
