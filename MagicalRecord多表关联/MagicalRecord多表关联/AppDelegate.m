//
//  AppDelegate.m
//  MagicalRecord多表关联
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//

#import "AppDelegate.h"
#import <MagicalRecord/MagicalRecord.h>
#import "UserEntity+CoreDataClass.h"
#import "MessageEntity+CoreDataClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"MyDatabase.sqlite"];
    NSLog(@"地址=========%@",[NSPersistentStore MR_urlForStoreName:@"MyDatabase.sqlite"]);
    /** 添加数据 */
    [self addDatas];
    [self searchData];
    return YES;
}

#pragma mark ========添加数据
-(void)addDatas{    
    NSManagedObjectContext *defautContext = [NSManagedObjectContext MR_defaultContext];
   //创建用户
    UserEntity *myUser = [UserEntity MR_createEntity];
    myUser.uname = @"xiaoshidao";
   //创建消息
    MessageEntity *message = [MessageEntity MR_createEntity];
    message.msgtext = @"你好";
    message.user = myUser;
    
    MessageEntity *message1 = [MessageEntity MR_createEntity];
    message1.msgtext = @"世界";
    message1.user = myUser;
    
    [defautContext MR_saveToPersistentStoreAndWait];
    
}

#pragma mark ========查询数据
-(void)searchData{
    /** 查询所有数据 */
    NSArray *allUser = [UserEntity MR_findAll];
    NSLog(@"所有用户=========%lu",(unsigned long)allUser.count);
    /** 循环取出所有用户对应的消息数据 */
    for (UserEntity *user in allUser) {
        for (MessageEntity *message in user.messages) {
            NSLog(@"所有消息=========%@",message.msgtext);
        }
    }


}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
