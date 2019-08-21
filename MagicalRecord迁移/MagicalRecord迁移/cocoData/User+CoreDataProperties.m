//
//  User+CoreDataProperties.m
//  MagicalRecord迁移
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//
//

#import "User+CoreDataProperties.h"

@implementation User (CoreDataProperties)

+ (NSFetchRequest<User *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"User"];
}

@dynamic name;
@dynamic age;

@end
