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



- (NSString *)getCurrentQuestionString{
    if (_currentPlayer == YES){
        //set to player 1 and generate question, return that
        return [NSString stringWithFormat:@" %@ : %@ ", _playerOne.name, _currentQuestion.question];

    } else return [NSString stringWithFormat:@" %@ : %@ ", _playerTwo.name, _currentQuestion.question];

}

-(void)getUserAnswer:(int)userAnswer{
    [_currentQuestion validateAnswer:userAnswer];
}

-(BOOL)checkEnteredAnswer{
    [_currentQuestion validateAnswer:<#(int)#>];
}


@end


