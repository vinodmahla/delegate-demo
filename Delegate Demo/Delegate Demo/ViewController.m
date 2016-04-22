//
//  ViewController.m
//  Delegate Demo
//
//  Created by Dhaval Kumar on 03/12/15.
//  Copyright © 2015 Endive Software. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "UIImageView+round.h"

@interface ViewController ()<myDelegates>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.imageView roundImage];
    self.view1.clipsToBounds = NO;
    self.view2.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"Second"])
    {
       
        SecondViewController *secon = segue.destinationViewController;
        secon.delegate = self; // set object reference in delegate property of myDelegate in second view controller 
        [secon setColor];
    }
    
}

-(void)setColorForViewController:(UIColor *)color
{
    self.view.backgroundColor = color;
}

- (IBAction)go:(id)sender {
    
    [self performSegueWithIdentifier:@"Second" sender:[UIColor redColor]];
}

@end
