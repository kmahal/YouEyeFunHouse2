//
//  KMViewController.m
//  YouEyeFunHouse2
//
//  Created by Kabir Mahal on 9/18/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import "KMViewController.h"

@interface KMViewController ()

@end

@implementation KMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //add first button
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [firstButton setTitle:@"Change my color" forState:UIControlStateNormal];
    [firstButton sizeToFit];
    firstButton.center = CGPointMake(160, 40);
    [self.view addSubview:firstButton];
    [firstButton addTarget:self action:@selector(testSel:) forControlEvents:UIControlEventTouchUpInside];
    
    //add the move button
    _secondButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_secondButton setTitle:@"Click me to grow and move!" forState:UIControlStateNormal];
    [_secondButton sizeToFit];
    _secondButton.center = CGPointMake(160, 100);
    [self.view addSubview:_secondButton];
    [_secondButton addTarget:self action:@selector(moveDownButton2:) forControlEvents:UIControlEventTouchUpInside];

    
    //add the toggle
    UIButton *toggleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [toggleButton setTitle:@"ON" forState:UIControlStateNormal];
    [toggleButton sizeToFit];
    toggleButton.center = CGPointMake(160, 160);
    [self.view addSubview:toggleButton];
    
    //make the textfield
    CGRect labelFrame = CGRectMake(160, 250, 100, 50);
    _firstLabel = [[UILabel alloc] initWithFrame:labelFrame];
    _firstLabel.center = CGPointMake(160, 240);
    _firstLabel.text = @"0.0";
    [self.view addSubview:_firstLabel];
    
    
    //make the slider
    CGRect sliderFrame = CGRectMake(160, 200, 320, 5);
    _sliderName = [[UISlider alloc] initWithFrame:sliderFrame];
    _sliderName.center = CGPointMake(160, 280);
    [self.view addSubview:_sliderName];
    [_sliderName addTarget:self action:@selector(showSliderValue:) forControlEvents:UIControlEventTouchUpInside];
    [_sliderName addTarget:self action:@selector(showSliderValue:) forControlEvents:UIControlEventValueChanged];


    
    //sticker
    CGRect imageFrame = CGRectMake(30, 400, 80, 80);
    _imagePlace = [[UIImageView alloc] initWithFrame:imageFrame];
    [_imagePlace setImage:[UIImage imageNamed:@"MobileMakersLogo_black_and_white.png"]];
    [self.view addSubview:_imagePlace];
    
    
  /*  
   CGRect textFrame = CGRectMake(160, 250, 160, 50);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFrame];
    //[textField setBackgroundColor:[UIColor grayColor]];
    [textField setBorderStyle:UITextBorderStyleRoundedRect];
    textField.center = CGPointMake(160, textField.frame.origin.y);
    [self.view addSubview:textField];
   
    
    
    CGRect frame = CGRectMake(160, 284, 100, 30);
    UIView *test = [[UIView alloc] initWithFrame:frame];
    test.center = CGPointMake(160, 500);
    test.backgroundColor = [UIColor greenColor];
    [self.view addSubview:test];
   */

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)testSel: (id) sender{
    CGRect frame = CGRectMake(160, 284, 100, 30);
    UIView *test = [[UIView alloc] initWithFrame:frame];
    test.center = CGPointMake(160, 500);
    test.backgroundColor = [UIColor greenColor];
    [self.view addSubview:test];
}

- (void)moveDownButton2:(id)sender{
    CGRect button2Frame = _secondButton.frame;
    button2Frame.size = CGSizeMake(button2Frame.size.width, 80);
    // same as button2Frame.size.height =
    button2Frame.origin.y += 10;
    _secondButton.frame = button2Frame;
}

-(void)showSliderValue:(id)sender {
    _firstLabel.text = [NSString stringWithFormat:@"%.4f", [_sliderName value]];
}





@end
