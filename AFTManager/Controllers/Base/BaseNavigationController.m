//
//  BaseNavigationController.m
//  AFTManager
//
//  Created by carl on 15-3-16.
//  Copyright (c) 2015年 Carl Hu. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()
@property(readonly, nonatomic) UIViewController *activeViewController;
@property(readonly, nonatomic) UIViewController *destinationViewController;
@end

@implementation BaseNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initializationParameters];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initializationParameters
{
    //Here initialization your parameters
    [self initializationData];
}

-(void)initializationData
{
    //Here initialization your data parameters
}

-(UIViewController *)activeViewController
{
    return [super topViewController];
}

-(UIViewController *)destinationViewController
{
    return ([super.viewControllers count] > 2) ? (UIViewController *)([super.viewControllers objectAtIndex:([super.viewControllers count] - 2)]):nil;
}

-(void)setViewControllers:(NSArray *)viewControllers
{
    if ([viewControllers isEqualToArray:super.viewControllers]) {
        return;
    }
    [super setViewControllers:viewControllers];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"The Current ViewController:%@\nThe Destination ViewController:%@",NSStringFromClass([self.topViewController class]),NSStringFromClass([viewController class]));
    
    if (self.activeViewController && ![[self.activeViewController class] isEqual:[viewController class]]){
        [super pushViewController:viewController animated:animated];
    }
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.activeViewController && ![[self.activeViewController class] isEqual:[viewController class]]){
        return [super popToViewController:viewController animated:animated];
    }
    
    return @[];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    if (self.activeViewController && ![[self.activeViewController class] isEqual:[self.destinationViewController class]]){
        return [super popViewControllerAnimated:animated];
    }
    
    return nil;
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    if (self.activeViewController && ![self.activeViewController isEqual:[self.viewControllers firstObject]]){
        return [super popToRootViewControllerAnimated:animated];
    }
    
    return @[];
}

@end


