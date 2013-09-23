//
//  Park.h
//  NPF-1
//
//  Created by Student on 9/10/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Park : NSObject
{
    NSString *parkName;
    NSString *parkLocation;
    NSString *dateFormed;
    NSString *area;
    NSString *link;
    CLLocation *location;
    NSString *imageLink;
    NSString *parkDescription;
    NSMutableArray *parks;

}

@property (nonatomic, strong) NSString *parkName;
@property (nonatomic, strong) NSString *parkLocation;
@property (nonatomic, strong) NSString *dateFormed;
@property (nonatomic, strong) NSString *area;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, strong) CLLocation *location;
@property (nonatomic, strong) NSString *imageLink;
@property (nonatomic, strong) NSString *parkDescription;
@property (nonatomic, strong) NSMutableArray *parks;

-(id) initWithName:(NSString *)p_name
      parkLocation:(NSString *)p_location
            formed:(NSString *)p_formed
              area:(NSString *)p_area
              link:(NSString *)p_link
          location:(CLLocation *)p_loc
         imageLink:(NSString *)p_imageLink
   parkDescription:(NSString *)p_desc;

+(id)park;


//-(NSString *) parkName;
-(void) setParkName:(NSString *) value;

//-(NSString *) parkLocation;
-(void) setParkLocation:(NSString *) value;

//-(NSString *) dateFormed;
//-(void) setDateFormed:(NSString *) value;

//-(NSString *) area;
//-(void) setArea:(NSString *) value;

//-(NSString *) link;
//-(void) setLink:(NSString *) value;



@end
