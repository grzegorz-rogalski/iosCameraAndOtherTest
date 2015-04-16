//
//  thirdViewController.h
//  tester
//
//  Created by Grzegorz on 16.04.2015.
//  Copyright (c) 2015 Grzegorz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *photoView;

-(IBAction)takePhoto :(UIButton *)sender;
-(IBAction)selectPhoto :(UIButton *)sender;

@end
