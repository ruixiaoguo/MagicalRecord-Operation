//
//  MessageEntity+CoreDataProperties.h
//  MagicalRecord多表关联
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//
//

#import "MessageEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface MessageEntity (CoreDataProperties)

+ (NSFetchRequest<MessageEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *msgtext;
@property (nullable, nonatomic, retain) UserEntity *user;

@end

NS_ASSUME_NONNULL_END
