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
    

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView1:) name:@"notifyButtonPressed0" object:nil];       // app is looking for when button0 is pressed
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeView2:) name:@"notifyButtonPressed1" object:nil];       // app is lookinf for when button1 is pressed
 
    
    [self changeView1:self];        // View1 shows as soon as view controller is selected
    
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
    [self addChildViewController:_content];             // ChildViewController is the viewcontroller that is shown when the segmented control is selected
    [_content didMoveToParentViewController:self];      // ParentViewController is the main viewcontroller
    [self.view addSubview:_content.view];
    
    
}




-(void)changeView1: (id) sender
{
    
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"View1"];
    
    NSLog(@"Button 1 pressed");     // Shows when button is pressed (used when I was testing)
    
    self.content = vc;              // Shows View1
    
    self.content.view.frame = CGRectMake(0, 65, 375, 550);      //Size of iPhone 6s screen - Was not sure how to make this adjustable depending on device
    
    
}


-(void)changeView2: (id) sender
{
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"View2"];
    
    NSLog(@"Button 2 pressed");     // Shows when button is pressed (used when I was testing)
    
    self.content = vc;              // Shows View2
    
    self.content.view.frame = CGRectMake(0, 65, 375, 550);      //Size of iPhone 6s screen - Was not sure how to make this adjustable depending on device
    
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];     
}


@end
