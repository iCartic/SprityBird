//
//  MainMenuViewController.m
//  spritybird
//
//  Created by William Manning on 4/6/15.
//  Copyright (c) 2015 Alexis Creuzot. All rights reserved.
//

#import "MainMenuViewController.h"
#import "Score.h"
#import "GameViewController.h"

#import <Skillz/Skillz.h>


@interface MainMenuViewController ()
@property (weak, nonatomic) IBOutlet UIView* rootView;
@end

@implementation MainMenuViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

#pragma mark - Skillz SDK Delegate implementation

- (IBAction)launchSkillz:(id)sender
{
    [[Skillz skillzInstance] launchSkillz];
}

- (void)tournamentWillBegin:(NSDictionary *)gameParameters
              withMatchInfo:(SKZMatchInfo *)matchInfo
{
    NSLog(@"Test Match Info matchId:%ld description:%@ entryCash:%@ entryPoints:%@ isCash:%d name:%@ templateId:%@",
          matchInfo.id,
          matchInfo.matchDescription,
          matchInfo.entryCash,
          matchInfo.entryPoints,
          matchInfo.isCash,
          matchInfo.name,
          matchInfo.templateId);
    
    SKZPlayer *player = matchInfo.player;
    NSLog(@"TestPlayer %@ %@ %@ %@", player.id, player.displayName, player.flagURL, player.avatarURL);
    
    UIStoryboard *storyboard;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        storyboard = [UIStoryboard storyboardWithName:@"Main-iPad" bundle:nil];
    } else {
        storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    
    GameViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"GameViewController"];
    [self presentViewController:viewController animated:YES completion:^{
        [viewController startGame];
    }];
}

- (SkillzOrientation)preferredSkillzInterfaceOrientation
{
    return SkillzPortrait;
}

- (void)skillzWillExit
{
    NSLog(@"Skillz is exiting");
}

- (void)skillzHasFinishedLaunching
{
    NSLog(@"Skillz has launched");
    
}
#pragma mark - End Delegate implementation

@end