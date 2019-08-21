//
//  UserEntity+CoreDataProperties.h
//  MagicalRecord多表关联
//
//  Created by grx on 2019/8/21.
//  Copyright © 2019 ruixiao. All rights reserved.
//
//

#import "UserEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface UserEntity (CoreDataProperties)

+ (NSFetchRequest<UserEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *uname;
@property (nullable, nonatomic, retain) NSSet<MessageEntity *> *messages;

@end

@interface UserEntity (CoreDataGeneratedAccessors)

- (void)addMessagesObject:(MessageEntity *)value;
- (void)removeMessagesObject:(MessageEntity *)value;
- (void)addMessages:(NSSet<MessageEntity *> *)values;
- (void)removeMessages:(NSSet<MessageEntity *> *)values;

@end

NS_ASSUME_NONNULL_END
