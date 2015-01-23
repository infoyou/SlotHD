//
//  XQYViewController.m
//  Virgin
//
//  Created by 5adian on 14-9-1.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "XQYViewController.h"

@interface XQYViewController ()

@end

@implementation XQYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.frame = CGRectMake(0, 0, 1024, 768);
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    NSLog(@"%@", NSStringFromCGRect(self.view.bounds));
    
    NSString *str = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"slot"];
    NSURL *htmlUrl = [[NSURL alloc] initFileURLWithPath:str];
    [webView loadRequest:[NSURLRequest requestWithURL:htmlUrl]];
    
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
