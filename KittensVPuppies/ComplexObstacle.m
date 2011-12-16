//
//  ComplexObstacle.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ComplexObstacle.h"


@implementation ComplexObstacle

-(void)setObstacles:(NSMutableArray *)newObstacles
{
    obstacleList = newObstacles;
}

-(void)update:(ccTime)dt withVelocity:(float)stageVelocity
{
    [self specialUpdate:dt withVelocity:stageVelocity];
}

-(void)specialUpdate:(ccTime)dt withVelocity:(float)stageVelocity
{
    self.position = ccp(self.position.x - stageVelocity, self.position.y);
}

+(id)getDefaultObstacle
{
    return nil;
}

-(SimpleObstacle *)collidesWithHero:(CGRect)heroIn
{
    return nil;
}

@end
