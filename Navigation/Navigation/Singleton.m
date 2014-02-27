//
//  Singleton.m
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize dictionary;

+(Singleton *) dicionarioStore{
    
    static Singleton *instacia = nil;
    
    if (!instacia)
    {
     
        instacia = [[super allocWithZone:nil]init];
        
        
    }
    
    return instacia;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    
    return [self dicionarioStore];
    
}
-(id)init
{
    self = [super init];
    if (self) {
        dictionary = [[NSMutableArray alloc]init];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"A" andImagem:@"alligator.jpeg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"B" andImagem:@"bear.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"C" andImagem:@"crab.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"D" andImagem:@"dolphin.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"E" andImagem:@"eagle.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"F" andImagem:@"fox.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"G" andImagem:@"goat.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"H" andImagem:@"hyena.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"I" andImagem:@"iguana.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"J" andImagem:@"jaguar.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"K" andImagem:@"kangoroo.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"L" andImagem:@"lizard.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"M" andImagem:@"monkey.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"N" andImagem:@"nanaGouvea.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"O" andImagem:@"ostrich.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"P" andImagem:@"polarbear.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Q" andImagem:@"quatar.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"R" andImagem:@"rhynocerous.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"S" andImagem:@"stork.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"T" andImagem:@"tiger.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"U" andImagem:@"U.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"V" andImagem:@"abacaxi.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"X" andImagem:@"abacaxi.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"W" andImagem:@"wolf.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Y" andImagem:@"abacaxi.jpg"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Z" andImagem:@"zebra.jpg"]];
    }
    return self;
}

-(NSMutableArray *)retornarLetras{
    return dictionary;
    
}

@end
