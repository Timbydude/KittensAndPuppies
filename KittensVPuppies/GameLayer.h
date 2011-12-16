//
//  GameLayer.h
//  KittensVPuppies
//
//  Created by Nicholas Locascio on 12/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "cocos2d.h"
#import "Hero.h"
#import "ScrollingBackground.h"
#import "FlameObstacle.h"
#import "FlameWheel.h"

// HelloWorldLayer
@interface GameLayer : CCLayer
{
    Hero *player;
    NSMutableArray *obstacles;
    ScrollingBackground *theBackground;
    FlameWheel *updateDis;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end