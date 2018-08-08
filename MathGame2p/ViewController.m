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
    _playerAndQuestion.text = [_currentGame getCurrentQuestionString];
    _playerOneLife.text = @"P1: 3 | P2: 3";
    _playerOneScore.text = @"P1: 0 | P2: 0";
 
    
//    if ([_currentGame getUserAnswer:self.checkAnswer] == TRUE){
//        self.playerOneScore.text = @"1";
//    }
//
    
}

- (IBAction)buttonZero:(UIButton *)sender {
    [self buttonPressed:@"0"];
}

- (IBAction)buttonOnePressed:(UIButton *)sender {
    [self buttonPressed:@"1"];
}

- (IBAction)buttonTwoPressed:(UIButton *)sender {
    [self buttonPressed:@"2"];
}

- (IBAction)buttonThreePressed:(UIButton *)sender {
    [self buttonPressed:@"3"];
}

- (IBAction)buttonPressedFour:(UIButton *)sender {
    [self buttonPressed:@"4"];
}

- (IBAction)buttonPressedFive:(UIButton *)sender {
    [self buttonPressed:@"5"];

}

- (IBAction)buttonPressedSix:(UIButton *)sender {
    [self buttonPressed:@"6"];
}

- (IBAction)buttonPressedSeven:(UIButton *)sender {
    [self buttonPressed:@"7"];

}

- (IBAction)buttonPressedEight:(UIButton *)sender {
    [self buttonPressed:@"8"];
}

- (IBAction)buttonPressedNine:(UIButton *)sender {
    [self buttonPressed:@"9"];
}

- (void)buttonPressed:(NSString *) buttonNum {
    if ([self.questionAnswerBox isEqual:@""]){
        self.questionAnswerBox.text=(buttonNum);
        self.checkAnswer = [self.questionAnswerBox.text intValue];
    } else {
        self.questionAnswerBox.text = [self.questionAnswerBox.text stringByAppendingString:buttonNum];
        self.checkAnswer = [self.questionAnswerBox.text intValue];
    }
}


- (IBAction)buttonEnterPressed:(UIButton *)sender {
    if ([self.currentGame getUserAnswer:self.checkAnswer]){
//        self.questionAnswerBox.text = @"YES";
        self.checkAnswer = 0;
        [_currentGame getCurrentQuestionString];
        self.playerAndQuestion.text = [_currentGame getNextQuestion];
        self.questionAnswerBox.text=(@"");
    } else {
        //self.questionAnswerBox.text = @"";
        self.checkAnswer = 0;
        [_currentGame getCurrentQuestionString];
        self.playerAndQuestion.text = [_currentGame getNextQuestion];
        self.questionAnswerBox.text=(@"");
        
    }
    self.playerOneScore.text = [_currentGame getFormatScore];
    self.playerOneLife.text = [_currentGame getFormatLife];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
