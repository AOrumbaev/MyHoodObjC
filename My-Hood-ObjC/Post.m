//
//  Post.m
//  My-Hood-ObjC
//
//  Created by Altynbek Orumbaev on 02.04.16.
//  Copyright © 2016 Altynbek Orumbaev. All rights reserved.
//

#import "Post.h"

@implementation Post

-(id) initPost:(NSString *)imagePath title:(NSString *)title description:(NSString *)description {
    
    self.imagePath = imagePath;
    self.title = title;
    self.postDesc = description;
    self = [super init];
    return self;

}

-(instancetype) initWithCode:(NSCoder *)aDecoder {
    
    self.imagePath = [aDecoder decodeObjectForKey:@"imagePath"];
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.postDesc = [aDecoder decodeObjectForKey:@"postDesc"];
    self = [super init];
    return self;
}

-(void) encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.imagePath forKey:@"imagePath"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.postDesc forKey:@"postDesc"];
}


@end
