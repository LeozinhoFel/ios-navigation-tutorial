//
//  Singleton.h
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dicionario.h"

@class Dicionario;

@interface Singleton : NSObject
{
    NSMutableArray *dictionary;
}
@property NSMutableArray *dictionary;

+(Singleton *) dicionarioStore;
+(id)allocWithZone:(struct _NSZone *)zone;
-(NSArray *)retornarLetras;

@end
