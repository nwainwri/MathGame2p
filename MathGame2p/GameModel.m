//
//  GameModel.m
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "GameModel.h"
#import "PlayerModel.h"
#import "Question.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _playerOne = [[PlayerModel alloc] initWithName:@"Player 1"];
        _playerTwo = [[PlayerModel alloc] initWithName:@"Player 2"];
        _currentPlayer = YES; // yes is player1 no is player2
        _currentQuestion = [[Question alloc] init];
    }
    return self;
}

-(NSString *)getNextQuestion{
    self.currentPlayer = !self.currentPlayer;
    [self.currentQuestion generateNewQuestion];
    return [self getCurrentQuestionString];
}


- (NSString *)getCurrentQuestionString{
    if (self.currentPlayer == YES){
        //set to player 1 and generate question, return that
        return [NSString stringWithFormat:@" %@ : %@ ", self.playerOne.name, self.currentQuestion.question];

    } else return [NSString stringWithFormat:@" %@ : %@ ", self.playerTwo.name, self.currentQuestion.question];
}

-(BOOL)getUserAnswer:(int)userAnswer{
    self.answer = [self.currentQuestion validateAnswer:userAnswer];
    self.currentPlayer ? [self.playerOne scoreKeeper:self.answer] : [self.playerTwo scoreKeeper:self.answer];
    // if current is tru... do first part... if false... do second
    self.currentPlayer ? [self.playerOne lifeTracker:self.answer] : [self.playerTwo lifeTracker:self.answer];
    return self.answer;
}


-(NSString *)getFormatScore{
    return  [NSString stringWithFormat:@"P1 %d : P2 %d ", self.playerOne.score, self.playerTwo.score];
}

-(NSString *)getFormatLife{
    return  [NSString stringWithFormat:@"P1 %d : P2 %d ", self.playerOne.life, self.playerTwo.life];
    
}


@end


