//
//  MainMenuViewController.h
//  spritybird
//
//  Created by William Manning on 4/6/15.
//  Copyright (c) 2015 Alexis Creuzot. All rights reserved.
//

#import "Scene.h"
#import <Skillz/Skillz.h>

@interface MainMenuViewController : UIViewController <SceneDelegate, SkillzBaseDelegate>

- (IBAction)playButton:(id)sender;

@end