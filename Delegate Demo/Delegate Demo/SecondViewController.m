//
//  SecondViewController.m
//  Delegate Demo
//
//  Created by Dhaval Kumar on 03/12/15.
//  Copyright © 2015 Endive Software. All rights reserved.
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

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)callAttand:(id)sender {
    
    if([self.delegate respondsToSelector:@selector(setColorForViewController:)])
    {
    
        [self.delegate setColorForViewController:[UIColor greenColor]];
    }
}

-(void)setColor
{
    self.view.backgroundColor = [UIColor redColor];
}
@end
