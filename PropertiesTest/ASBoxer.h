//
//  ASBoxer.h
//  PropertiesTest
//
//  Created by dmitriyshirvanyan on 10.12.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) int* age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;



-(NSInteger) howOldAreYou;

@end

NS_ASSUME_NONNULL_END
