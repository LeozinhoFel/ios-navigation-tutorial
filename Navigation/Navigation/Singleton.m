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
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"A" andImagem:@"alligator.jpeg" andNome:@"Alligator"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"B" andImagem:@"bear.jpg" andNome:@"Bear"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"C" andImagem:@"crab.jpg" andNome:@"Crab"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"D" andImagem:@"dolphin.jpg" andNome:@"Dolphin"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"E" andImagem:@"eagle.jpg" andNome:@"Eagle"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"F" andImagem:@"fox.jpg" andNome:@"Fox"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"G" andImagem:@"goat.bmp" andNome:@"Goat"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"H" andImagem:@"hyena.jpg" andNome:@"Hyena"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"I" andImagem:@"iguana.jpg" andNome:@"Iguana"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"J" andImagem:@"jaguar.jpg" andNome:@"Jaguar"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"K" andImagem:@"kangoroo.jpg" andNome:@"Kangoroo"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"L" andImagem:@"lizard.jpg" andNome:@"Lizard"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"M" andImagem:@"monkey.jpg" andNome:@"Monkey"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"N" andImagem:@"nanaGouvea.jpg" andNome:@"nanaGouvea"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"O" andImagem:@"ostrich.jpg" andNome:@"Ostrich"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"P" andImagem:@"polarbear.jpg" andNome:@"PolarBear"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Q" andImagem:@"quatar.jpg" andNome:@"Quail"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"R" andImagem:@"rhynocerous.jpg" andNome:@"Rhynocerous"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"S" andImagem:@"stork.jpg" andNome:@"Stork"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"T" andImagem:@"tiger.jpg" andNome:@"Tiger"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"U" andImagem:@"urial.jpg" andNome:@"Urial"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"V" andImagem:@"vicuna.jpg" andNome:@"Vicuna"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"X" andImagem:@"abacaxi.jpg" andNome:@"X"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"W" andImagem:@"wolf.jpg" andNome:@"Wolf"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Y" andImagem:@"abacaxi.jpg" andNome:@"Yak"]];
        [dictionary addObject:[[Dicionario alloc]initWithLetra:@"Z" andImagem:@"zebra.jpg" andNome:@"Zorilla"]];
    }
    return self;
}

-(NSMutableArray *)retornarLetras{
    return dictionary;
    
}

@end
