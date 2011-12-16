//
//  FlameObstacle.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlameObstacle.h"


@implementation FlameObstacle

-(id)init
{
    if((self = [super init]))
    {
        
    }
    return self;
}

+(id)newObstacle
{
    FlameObstacle *newFlame = nil;
    if ((newFlame = [[[super alloc] initWithFile:@"flameswirls.gif"] autorelease]))
    {
        [newFlame refreshWH];
    }
    return newFlame;
}

@end
