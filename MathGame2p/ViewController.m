//
//  ViewController.m
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playerAndQuestion;
@property (weak, nonatomic) IBOutlet UILabel *playerOneLife;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoLife;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UILabel *questionAnswerBox;
@property (nonatomic, strong) GameModel *currentGame;


@property (assign, nonatomic) int checkAnswer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _currentGame = [[GameModel alloc] init];
    self.playerAndQuestion.text = [_currentGame getCurrentQuestionString];
    
//    if ([_currentGame getUserAnswer:self.checkAnswer] == TRUE){
//        self.playerOneScore.text = @"1";
//    }
//
    
}

- (IBAction)buttonZero:(UIButton *)sender {
    self.checkAnswer = 0;
    if ([self.questionAnswerBox isEqual:@""]){
        self.questionAnswerBox.text=(@"0");
        self.checkAnswer = [self.questionAnswerBox.text integerValue];
    } else {
        self.questionAnswerBox.text = [self.questionAnswerBox.text stringByAppendingString:@"0"];
        self.checkAnswer = [self.questionAnswerBox.text integerValue];
    }
}

- (IBAction)buttonOnePressed:(UIButton *)sender {
}

- (IBAction)buttonTwoPressed:(UIButton *)sender {
}

- (IBAction)buttonThreePressed:(UIButton *)sender {
}

- (IBAction)buttonPressedFour:(UIButton *)sender {
}

- (IBAction)buttonPressedFive:(UIButton *)sender {
}

- (IBAction)buttonPressedSix:(UIButton *)sender {
}

- (IBAction)buttonPressedSeven:(UIButton *)sender {
}

- (IBAction)buttonPressedEight:(UIButton *)sender {
}

- (IBAction)buttonPressedNine:(UIButton *)sender {
}










- (IBAction)buttonEnterPressed:(UIButton *)sender {
    if ([self.currentGame getUserAnswer:self.checkAnswer] == NO){
        self.questionAnswerBox.text = @"YES";
    };
    //self.questionAnswerBox.text = @"";
}


- (IBAction)buttonEnter:(UIButton *)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
