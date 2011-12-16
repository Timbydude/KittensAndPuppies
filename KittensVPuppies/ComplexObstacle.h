//
//  ComplexObstacle.h
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleObstacle.h"

@interface ComplexObstacle : CCLayer {
    NSMutableArray *obstacleList;
    CGPoint velocity;
}

-(void)update:(ccTime)dt withVelocity:(float)stageVelocity;
-(void)specialUpdate:(ccTime)dt withVelocity:(float)stageVelocity;
-(SimpleObstacle *)collidesWithHero:(CGRect)heroIn;
-(void)setObstacles:(NSMutableArray *)newObstacles;
+(id)getDefaultObstacle;


@end
