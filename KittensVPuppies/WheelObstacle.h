//
//  WheelObstacle.h
//  KittensVPuppies
//
//  Created by Jonathan Bunce on 12/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "ComplexObstacle.h"

@interface WheelObstacle : ComplexObstacle {
    float radius;
    float radsPerSec;
    float tParam;
}

-(void)spin;

@end
