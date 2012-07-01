//
//  DSFEngine.m
//  IETXGAS
//
//  Created by douglas on 01/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DSFEngine.h"


@interface DSFEngine (){
    

    
}


@end




@implementation DSFEngine




- (double)calculate:(NSNumber*)etanol:(NSNumber*)gas{
    
    double r = [etanol doubleValue] / [gas doubleValue];
    
    return r;
}


@end

