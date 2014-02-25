//
//  Dicionario.m
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario
@synthesize letra;
-(id)initWithLetra:(NSString *)l andImagem:(NSString *)imag
{
    self = [super init];
    if (self) {
        dicionario = [[NSMutableArray alloc]init];
      
    }
    return self;
}




@end
