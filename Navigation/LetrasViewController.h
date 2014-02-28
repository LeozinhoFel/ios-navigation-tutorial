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
#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface LetrasViewController : UIViewController
{
    NSMutableArray *letras;
    
    Singleton *allWords;
    NSString *title;
    Dicionario *wordDic ;
    NSString *nomeAni;
    NSString *imagemAni;
}


-(IBAction)next:(id)sender;



-(id)initWithLetra:(NSMutableArray *)dic;
@end
