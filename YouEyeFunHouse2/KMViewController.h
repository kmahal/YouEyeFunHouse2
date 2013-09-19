//
//  KMViewController.h
//  YouEyeFunHouse2
//
//  Created by Kabir Mahal on 9/18/13.
//  Copyright (c) 2013 Kabir Mahal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMViewController : UIViewController


@property UIButton *secondButton;
@property UILabel *firstLabel;
@property UISlider *sliderName;
@property UIImageView *imagePlace;

- (void)testSel: (id) sender;
- (void)moveDownButton2:(id)sender;
- (void)showSliderValue:(id)sender;


@end
