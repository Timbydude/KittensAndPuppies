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
        //initialize
    }
    return self;
}

+(id)newObstacle
{
    FlameObstacle *newFlame = nil;
    if ((newFlame = [[[super alloc] initWithFile:@"Icon.png"] autorelease]))
    {
        //some extra or default init stuff that's gonna get called anyways....
    }
    return newFlame;
}

@end
