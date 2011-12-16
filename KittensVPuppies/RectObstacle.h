//
//  RectObstacle.h
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleObstacle.h"
#import "cocos2d.h"

@interface RectObstacle : CCSprite {
    CGPoint wh;
}

-(void)refreshWH;

@end