//
//  WheelObstacle.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "WheelObstacle.h"


@implementation WheelObstacle

-(void)update:(ccTime)dt withVelocity:(float)stageVelocity
{
    tParam += dt;
    [self specialUpdate:dt withVelocity:stageVelocity];
    [self spin];
}

-(void)spin
{
    for(SimpleObstacle *curOb in obstacleList)
    {
        float theta = tParam + 2*3.14*([obstacleList indexOfObject:curOb] + 1) / [obstacleList count];
        curOb.position = ccp(radius * cosf(theta), radius * sinf(theta));
    }
}

-(SimpleObstacle *)collidesWithHero:(CGRect)heroIn
{
    SimpleObstacle *curSimp = nil;
    for(SimpleObstacle *curObj in obstacleList)
    {
        if([curObj collidesWithHero:heroIn withCenter:self.position])
        {
            curSimp = curObj;
        }
    }
    return curSimp;
}

@end
