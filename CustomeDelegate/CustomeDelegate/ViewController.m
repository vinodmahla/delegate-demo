//
//  ViewController.m
//  CustomeDelegate
//
//  Created by Vinod Kumar on 03/12/15.
//  Copyright © 2015 Vinod Kumar. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<mydelegate1>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Second"])
    {
        SecondViewController *secVc =segue.destinationViewController;
        secVc.delegate=self;
        [secVc setColor];
    }
}

- (IBAction)btnGo:(id)sender
{
    [self performSegueWithIdentifier:@"Second" sender:[UIColor redColor] ];
}
-(void)setColorViewController:(UIColor *)color
{
    self.view.backgroundColor=color;
}
@end
