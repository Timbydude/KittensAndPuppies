//
//  FlameWheel.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlameWheel.h"


@implementation FlameWheel

-(id)init
{
    if((self = [super init]))
    {
        radius = 75;
    }
    return self;
}

+(id)getDefaultObstacle
{
    FlameWheel *newFlame = nil;
    if((newFlame = [[[super alloc] init] autorelease]))
    {
        NSMutableArray *tempObj = [NSMutableArray new];
        for(int x = 0; x < 8; x++)
        {
            FlameObstacle *tempFlame = [FlameObstacle newObstacle];
            [tempObj addObject:tempFlame];
            [newFlame addChild:tempFlame];
        }
        [newFlame setObstacles:tempObj];
    }
    return newFlame;
}

@end
