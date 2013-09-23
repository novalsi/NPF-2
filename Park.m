//
//  Park.m
//  NPF-1
//
//  Created by Student on 9/10/13.
//  Copyright (c) 2013 Nick Smith. All rights reserved.
//

#import "Park.h"

@implementation Park

@synthesize parkName,parkLocation,area,dateFormed,link,location,imageLink,parkDescription,parks;

-(id) initWithName:(NSString *)p_name
      parkLocation:(NSString *)p_location
            formed:(NSString *)p_formed
              area:(NSString *)p_area
              link:(NSString *)p_link
          location:(CLLocation *)p_loc
         imageLink:(NSString *)p_imageLink
   parkDescription:(NSString *)p_desc
{
    self = [super init];
    if (self)
    {
        self.parkName=p_name;
        self.parkLocation=p_location;
        self.dateFormed=p_formed;
        self.area=p_area;
        self.link=p_link;
        self.imageLink=p_imageLink;
        self.location=p_loc;
        self.parkDescription=p_desc;
        
        return self;
    }
    
    return 0;
}

-(id) init
{
    self = [super init];
    if (self) {
        self.parkName=@"unknown";
        self.parkLocation=@"unknown";
        self.dateFormed=@"unknown";
        self.area=@"unknown";
        self.link=@"unknown";
        self.imageLink=@"unknown";
        self.location=NULL;
        self.parkDescription=@"unknown";
    }
    return self;
}

+(id) park
{
    Park *park = [[self alloc] init];
    return park;
}

//-(NSString *) parkName                        {return parkName;}
-(void) setParkName:(NSString *) value
{
    if (value.length < 3 || value.length > 75)
    {
        parkName = @"TBD";
        NSLog(@"Bad Park Name.  Bad.  Setting to %@",parkName);
    }
    else
    {
        parkName = value;
    }
}

//-(NSString *) parkLocation                    {return parkLocation;}
-(void) setParkLocation:(NSString *) value
{
    if (value.length < 3 || value.length > 75)
    {
        parkLocation = @"TBD";
        NSLog(@"Bad Park Location.  Bad.  Setting to %@",parkLocation);
    }
    else
    {
        parkLocation = value;
    }
}

//-(NSString *) dateFormed                      {return dateFormed;}
//-(void) setDateFormed:(NSString *) value      {dateFormed = value;}

//-(NSString *) area                            {return area;}
//-(void) setArea:(NSString *) value            {area = value;}

//-(NSString *) link                            {return link;}
//-(void) setLink:(NSString *) value            {link = value;}

-(NSString*) description    
{
	return [NSString stringWithFormat:@"parkName: %@\n parkLocation: %@\n dateFormed: %@\n area: %@\n link: %@\n imageLink: %@\n location: %@\n parkDescription: %@",
            parkName,parkLocation,dateFormed,area,link,imageLink,location,parkDescription];
}


@end
