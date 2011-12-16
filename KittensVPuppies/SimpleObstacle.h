//
//  SimpleObstacle.h
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface SimpleObstacle : CCSprite {
    
}

-(void)update:(ccTime)dt;
-(void)specialUpdate:(ccTime)dt;
-(void)didDamage;
-(BOOL)collidesWithHero:(CGRect)inH withCenter:(CGPoint)center;
+(id)newObstacle;

@end
