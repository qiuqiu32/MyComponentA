//
//  MTViewController.m
//  MyComponentA
//
//  Created by 1442687881@qq.com on 07/14/2020.
//  Copyright (c) 2020 1442687881@qq.com. All rights reserved.
//

#import "MTViewController.h"
#import "MTRouter.h"
#import "MyComponentViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"MTViewController";
    
   
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
  
    [btn setTitle:@"TO ComponentA" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    btn.center = self.view.center;
    [self.view addSubview:btn];
}



-(void)clickBtn{
    
    MyComponentViewController *viewCtl = [[MyComponentViewController alloc ] init];
    if (viewCtl) {
        [self.navigationController pushViewController:viewCtl animated:YES];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
