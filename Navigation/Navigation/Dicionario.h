//
//  Dicionario.h
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dicionario : NSObject
{
    NSMutableArray *dicionario;
//    NSString *letra;
//    
}

//@property NSString *letra;
-(id)initWithLetra:(NSString *)letra andImagem:(NSString *)imag andNome:(NSString *)nomeAni;
-(NSMutableArray *)dicionarioCompleto;

@end
