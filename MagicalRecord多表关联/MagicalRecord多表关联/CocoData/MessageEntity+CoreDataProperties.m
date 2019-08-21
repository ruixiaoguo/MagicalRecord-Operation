//
//  MessageEntity+CoreDataProperties.m
//  MagicalRecord多表关联
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//
//

#import "MessageEntity+CoreDataProperties.h"

@implementation MessageEntity (CoreDataProperties)

+ (NSFetchRequest<MessageEntity *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"MessageEntity"];
}

@dynamic msgtext;
@dynamic user;

@end
