//
//  SimpleObstacle.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SimpleObstacle.h"


@implementation SimpleObstacle



-(void)update:(ccTime)dt
{ 
    [self specialUpdate:dt];
}

-(void)specialUpdate:(ccTime)dt
{ }

-(void)didDamage 
{ }

-(BOOL)collidesWithHero:(CGRect)inH withCenter:(CGPoint)center
{ return false; }

+(id)newObstacle
{ return nil; }

@end
