//
//  ScoreLayer.m
//  BrainShot
//
//  Created by  cogent on 10-3-31.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ScoreLayer.h"


@implementation ScoreLayer

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {
    CCLabel* label = [CCLabel labelWithString:[NSString stringWithFormat:@"Level %d / 60", [Level current]] fontName:@"Marker Felt" fontSize:20];
    CGSize size = [[CCDirector sharedDirector] winSize];
    label.position = ccp(size.width/2, 300);
    [self addChild:label];
    
    CCLabel* gotoMenu = [CCLabel labelWithString:@"menu" fontName:@"Marker Felt" fontSize:20];
    CCMenuItemLabel *menuLabel = [CCMenuItemLabel itemWithLabel:gotoMenu target:self selector:@selector(menu:)];
    CCMenu *menu = [CCMenu menuWithItems:menuLabel, nil];
    menu.position = ccp(size.width - 30, 300);
		[self addChild:menu];
	}
	return self;
}

- (void)menu:(id)sender
{
  [[CCDirector sharedDirector] replaceScene: [MenuScene node]];
}
@end
