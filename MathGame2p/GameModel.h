//
//  GameModel.h
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayerModel;
@class Question;

@interface GameModel : NSObject

@property BOOL currentPlayer;
@property PlayerModel* playerOne;
@property PlayerModel* playerTwo;
@property Question *currentQuestion;

- (NSString *)getCurrentQuestionString;

-(BOOL)getUserAnswer:(int)userAnswer;

//-(BOOL)checkEnteredAnswer;

@end
