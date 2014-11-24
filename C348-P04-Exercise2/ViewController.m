//
//  ViewController.m
//  C348-P04-Exercise2
//
//  Created by Seow Khee Wei (RP) on 10/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *outButtonA;
@property (strong, nonatomic) IBOutlet UIButton *outButtonB;
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
- (IBAction)actSwitchButtonPressed:(UIButton *)sender {

    //create temp buffer to stort a image
    UIImage *buttonAImage = [[self outButtonA] imageForState:UIControlStateNormal] ;
    //set button A image to button B's image
    
    [[self outButtonA] setImage:[[self outButtonB] imageForState:UIControlStateNormal] forState:UIControlStateNormal];
    
    [[self outButtonB] setImage:buttonAImage forState:UIControlStateNormal];
    
}

@end
