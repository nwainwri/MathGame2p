//
//  ViewController.m
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playerAndQuestion;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLife;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLife;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UILabel *questionAnswerBox;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _playerAndQuestion.text=(@"test"); //how to update text
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonZero:(UIButton *)sender {
    _questionAnswerBox.text=(@"0");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
