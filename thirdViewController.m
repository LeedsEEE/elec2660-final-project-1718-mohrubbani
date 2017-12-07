//
//  thirdViewController.m
//  LeagueTable
//
//  Created by Syed Rubbani [el16smr] on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView1:) name:@"notifyButtonPressed0" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView2:) name:@"notifyButtonPressed1" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self changeView1:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setContent:(UIViewController *)content
{
    if(_content)
    {
        [_content.view removeFromSuperview];
        [_content removeFromParentViewController];
    }
    
    _content = content;
    [self addChildViewController:_content];
    [_content didMoveToParentViewController:self];
    [self.view addSubview:_content.view];
    
    
}




-(void)changeView1: (id) sender
{
    
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
    
    NSLog(@"Button 1 pressed");
    
    self.content = vc;
    
    self.content.view.frame = CGRectMake(0, 65, 375, 550);      //Size of iPhone 6s screen - Was not sure how to make this adjustable depending on device
    
    
}


-(void)changeView2: (id) sender
{
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
    
    NSLog(@"Button 2 pressed");
    
    self.content = vc;
    
    self.content.view.frame = CGRectMake(0, 65, 375, 550);      //Size of iPhone 6s screen - Was not sure how to make this adjustable depending on device
    
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
