//
//  RectObstacle.m
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RectObstacle.h"


@implementation RectObstacle

-(BOOL)collidesWithHero:(CGRect)inH withCenter:(CGPoint)center;
{
    return CGRectIntersectsRect(inH, CGRectMake(self.position.x + center.x - wh.x / 2, self.position.y + center.y -  wh.y / 2, wh.x, wh.y));
}

-(void)refreshWH
{
    wh = ccp(self.contentSize.width, self.contentSize.height);
}

@end
