//
//  Question.h
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property NSString *question;
@property int answer;

-(BOOL)validateAnswer:(int)userAnswer;

-(void)generateNewQuestion;

@end
