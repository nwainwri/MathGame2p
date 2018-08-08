//
//  PlayerModel.m
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PlayerModel.h"

@implementation PlayerModel

- (instancetype)initWithName:(NSString *)named
{
    self = [super init];
    if (self) {
        _life = 3;
        _score = 0;
        _name = named;
    }
    return self;
}

-(void)scoreKeeper:(BOOL)valid{
    if (valid == YES){
        self.score += 1;
    } else self.score -= 1;
    
}

-(void)lifeTracker:(BOOL)valid{
    if (valid == NO){
        self.life -= 1;
    }
}


@end


