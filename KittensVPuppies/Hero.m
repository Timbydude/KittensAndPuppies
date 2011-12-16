//
//  Hero.m
//  KittensVPuppies
//
//  Created by Nicholas Locascio on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Hero.h"


@implementation Hero

-(id)init
{
    if((self=[super init]))
    {
        posX = 50;
        posY = 200.0f; velY = 100.0f; accY = -700.0f;
        impulse = 400;
        
        
        hSprite = [CCSprite spriteWithFile:@"Icon.png"];
        hSprite.position = ccp(posX, posY);
        
        maxJumps = 2;
        remainingJumps = 0;
        
        [self addChild:hSprite];
        
        isScreenTouched = false;
        wh = ccp(hSprite.contentSize.width, hSprite.contentSize.height);
        
    }
    return self;
}

-(void) touchesBegan:(CGPoint)location
{
    isScreenTouched = YES;
    if(remainingJumps > 0)
    {
        velY = impulse;
        remainingJumps-=1;
    }
}

-(void) touchesEnded:(CGPoint)location
{
    isScreenTouched = NO;
    
    velY = MIN(150, velY);
    
}

-(void) update:(ccTime)dt
{
    [self handlePhysics:dt];
    timeLeftInvincible -= dt;
}

-(void) specialUpdate
{
    //NOTHING IN HERE
}

-(void) takeDamage
{
    health-=1;
    //timeLeftInvincible = 2.0f;
}

-(void) handlePhysics:(ccTime)dt
{
    //INCREMENT Physics
    velY += accY*dt;
    posY += velY*dt;
    
    //HANDLE CEILING AND FLOOR COLLISIONS
        //
    if(posY < wh.y/2)
    {
        posY = wh.y/2;
        velY = 0;
        remainingJumps = maxJumps;
    }
    else if(posY > 320 - wh.y/2)
    {
        posY = 320 - wh.y/2;
        velY = 0;
    }
    
    hSprite.position = ccp(posX, posY);
        //
    //
}

-(CGRect) getHeroRect
{
    return CGRectMake(posX-wh.x/2, posY-wh.y/2, wh.x, wh.y);
}

-(void) collideHeroWithObjects:(NSMutableArray *)objects
{
    if(timeLeftInvincible <=0 )
    {
        for (ComplexObstacle *obj in objects) 
        {
            SimpleObstacle *tempObs = [obj collidesWithHero : [self getHeroRect]];
            if(tempObs)
            {
                NSLog(@"HIT");
                [self takeDamage];
                //[tempObs didDamage];
                return;
            }
        }
    }
}


@end
