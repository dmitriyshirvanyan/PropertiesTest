//
//  ASBoxer.m
//  PropertiesTest
//
//  Created by dmitriyshirvanyan on 10.12.2021.
//

#import "ASBoxer.h"

@interface ASBoxer ()
@property (assign, nonatomic) NSInteger nameCount;
@end
 
@implementation ASBoxer
@synthesize name = _name;
// мы не можем одновременно переопределить и сеттер и геттер
// команда @synthesize !!!
// позволяет одновременно переоперделить
  
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void)setName:(NSString *) inputName {
    NSLog(@"setter setName: is called");
    
    _name = inputName;
}
 
- (NSString*) name {
    //self.nameCount = self.nameCount +1; 
    self.nameCount++;
    NSLog(@"name getter is called %d times", self.nameCount);
    return  _name;
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    return  _age;
}

- (NSInteger) howOldAreYou {
    return _age;
}


/*
//Переопределим Setters
- (void)setName:(NSString *)name {
    NSLog(@"setter setName: is called");
    
    _name = name;
}
*/

/*
//Переопределим Getters
- (NSString*) name {
    return  _name;
}
*/


@end
