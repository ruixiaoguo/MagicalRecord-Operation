//
//  UserEntity+CoreDataProperties.m
//  MagicalRecord多表关联
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//
//

#import "UserEntity+CoreDataProperties.h"

@implementation UserEntity (CoreDataProperties)

+ (NSFetchRequest<UserEntity *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"UserEntity"];
}

@dynamic uname;
@dynamic messages;

@end
