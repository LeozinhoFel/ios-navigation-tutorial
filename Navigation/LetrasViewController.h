//
//  LetrasViewController.h
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Singleton.h"
#import "Dicionario.h"

@interface LetrasViewController : UIViewController
{
    NSMutableArray *letras;
    NSInteger indiceObj ;
    Singleton *allWords;
    NSString *title;
    Dicionario *wordDic ;
}


-(IBAction)next:(id)sender;

//-(NSString *)setTitle;

-(id)initWithLetra:(NSMutableArray *)dic;
@end
