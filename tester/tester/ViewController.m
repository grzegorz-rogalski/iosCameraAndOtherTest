//
//  ViewController.m
//  tester
//
//  Created by Grzegorz on 12.04.2015.
//  Copyright (c) 2015 Grzegorz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITabBar *leftTabBar;
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backPage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        NSString *new=@"http://google.pl";
    NSURL *url0=[NSURL URLWithString:new];
    NSURLRequest *url=[NSURLRequest requestWithURL:url0];
    [_myWebView loadRequest:url];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)runBackwoardOnInternet:(UIBarButtonItem *)sender {
    
}
- (IBAction)forword:(UIBarButtonItem *)sender {
    [_myWebView goForward];
}

- (IBAction)didBackButton:(UIButton *)sender {
    [_myWebView goBack];
    
}

- (IBAction)backOnInternetView:(UIBarButtonItem *)sender {
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
