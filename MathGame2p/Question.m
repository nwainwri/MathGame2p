//
//  Question.m
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "Question.h"


@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        int a = arc4random_uniform(9) + 1;
        int b = arc4random_uniform(9) + 1;
        self.question = [NSString stringWithFormat:@" %i add %i = ? ", a, b];
        self.answer = a + b;
    }
    return self;
}



-(BOOL)validateAnswer:(int)userAnswer{
    if (userAnswer == _answer){
        return YES;
    } else return NO;
}

-(void)generateNewQuestion{
    
    int a = arc4random_uniform(9) + 1;
    int b = arc4random_uniform(9) + 1;
    self.question = [NSString stringWithFormat:@" %i add %i = ? ", a, b];
    self.answer = a + b;
    //return self.question;
}

@end
