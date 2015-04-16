//
//  secondViewController.m
//  tester
//
//  Created by Grzegorz on 12.04.2015.
//  Copyright (c) 2015 Grzegorz. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textu;
@property (weak, nonatomic) IBOutlet UISlider *slide;
@property (weak, nonatomic) IBOutlet UIDatePicker *date;
@property (weak, nonatomic) IBOutlet UIStepper *step;


@end

@implementation secondViewController

- (IBAction)SwitchPropertis:(UISwitch *)sender {
    if(sender.isOn)
    {
        [_textu setFont:[UIFont systemFontOfSize:22]];
    }
    else
    {
        [_textu setFont:[UIFont systemFontOfSize:12]];
    }
}
- (IBAction)stepperChanger:(UIStepper *)sender {
    double d=[sender value]*100;
   [_textu setFont:[UIFont systemFontOfSize:(int)d]];
}
- (IBAction)sliderChanger:(UISlider *)sender {
    //double d=[sender value];
    [_textu setFont:[UIFont systemFontOfSize:self.slide.value*100]];
   // self.textu.text = [NSString stringWithFormat:@"%f", self.slide.value*100];
}
- (IBAction)datePickerChanger:(UIDatePicker *)sender {
    self.textu.text = [NSString stringWithFormat:@"%@", self.date.date];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    _step.stepValue=1;

    
    // Do any additional setup after loading the view.
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
