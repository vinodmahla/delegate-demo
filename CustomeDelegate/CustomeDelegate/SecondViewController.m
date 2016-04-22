//
//  SecondViewController.m
//  CustomeDelegate
//
//  Created by Vinod Kumar on 03/12/15.
//  Copyright © 2015 Vinod Kumar. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)btnCallAttend:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(setColorViewController:)])
    {
        [self.delegate setColorViewController:[UIColor greenColor]];
    }
}

- (IBAction)btnBack:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)setColor
{
    self.view.backgroundColor=[UIColor redColor];
}

@end
