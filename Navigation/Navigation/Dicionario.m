//
//  Dicionario.m
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Dicionario.h"

@implementation Dicionario

-(id)initWithLetra:(NSString *)l andImagem:(NSString *)imag
{
    self = [super init];
    if (self) {
        dicionario = [[NSMutableArray alloc] initWithObjects:l, imag, nil];
        
        NSLog(@"aqui: %@", dicionario);
      
    }
    return self;
}

-(NSMutableArray *)dicionarioCompleto
{
    return dicionario;
}






@end
