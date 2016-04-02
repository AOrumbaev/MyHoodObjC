//
//  Post.h
//  My-Hood-ObjC
//
//  Created by Altynbek Orumbaev on 02.04.16.
//  Copyright © 2016 Altynbek Orumbaev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject

@property (nonatomic, weak) NSString *imagePath;
@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *postDesc;

-(id) initPost: (NSString*)imagePath title:(NSString*)title description:(NSString*)description;

-(instancetype) initWithCode:(NSCoder*) aDecoder;

-(void) encodeWithCoder:(NSCoder*) aCoder;


@end
