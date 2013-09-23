//
//  NPF_2AppDelegate.m
//  NPF-2
//
//  Created by Student on 9/23/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "NPF_2AppDelegate.h"

@implementation NPF_2AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //load data
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    NSDictionary *tempDictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *tempArray = [tempDictionary objectForKey:@"parks"];
    
    //create parks ivar
    self.parks = [NSMutableArray array];
    
    for (id dict in tempArray)
    {
        NSString *parkName          = [dict objectForKey:@"parkName"];
        NSString *parkLocation      = [dict objectForKey:@"parkLocation"];
        float latitude              = [[dict objectForKey:@"latitude"] floatValue];
        float longitude             = [[dict objectForKey:@"longitude"] floatValue];
        CLLocation *location        = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
        NSString *dateFormed        = [dict objectForKey:@"dateFormed"];
        NSString *area              = [dict objectForKey:@"area"];
        NSString *link              = [dict objectForKey:@"link"];
        NSString *imageLink         = [dict objectForKey:@"imageLink"];
        NSString *parkDescription   = [dict objectForKey:@"parkDescription"];
        
        
        
        Park *p = [Park park];
        p.parkName = parkName;
        p.parkLocation = parkLocation;
        p.location = location;
        p.dateFormed = dateFormed;
        p.area = area;
        p.link = link;
        p.imageLink = imageLink;
        p.parkDescription = parkDescription;
                
        
        
        [self.parks addObject:p];
    }
    
    for (Park *park in self.parks) {
        NSLog(@"park = %@", park);
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
