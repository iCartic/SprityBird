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


@interface MainMenuViewController ()
@property (weak, nonatomic) IBOutlet UIView* rootView;
@end

@implementation MainMenuViewController

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)playButton:(id)sender
{
    UIStoryboard *storyboard;
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        storyboard = [UIStoryboard storyboardWithName:@"Main-iPad" bundle:nil];
    } else {
        storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    }
    
    GameViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"GameViewController"];
    [self presentViewController:viewController animated:YES completion:^{
        NSLog(@"heyyy start game");
        [viewController startGame];
    }];
}

@end