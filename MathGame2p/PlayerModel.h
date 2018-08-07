//
//  PlayerModel.h
//  MathGame2p
//
//  Created by Nathan Wainwright on 2018-08-06.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerModel : NSObject

@property int life;
@property int score;
@property NSString *name;

- (instancetype)initWithName:(NSString *)named;

-(void)scoreKeeper:(BOOL)valid;

-(void)lifeTracker:(BOOL)valid;

@end
