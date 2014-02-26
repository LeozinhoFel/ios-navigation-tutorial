//
//  LetrasViewController.m
//  Navigation
//
//  Created by Leonardo Felipe da Silva on 2/25/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetrasViewController.h"

@interface LetrasViewController ()

@end

@implementation LetrasViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        allWords = [[Singleton alloc]init];
        letras = [allWords retornarLetras ];
        wordDic = [letras objectAtIndex:0];
        indiceObj = [letras indexOfObject:wordDic];
        

        
        title = [[wordDic dicionarioCompleto]objectAtIndex:0];
        
        

    }
    return self;
}

-(id)initWithLetra:(Dicionario *)dic{
    
    self = [super init];
    if(self)
    {
        allWords = [[Singleton alloc]init];
        letras = [allWords retornarLetras ];
        wordDic = dic;
        
        
        title = [[wordDic dicionarioCompleto]objectAtIndex:0];
       
       
        
    }
    return self;



}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   
    
    
    self.title = title;
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIImageView *imagem = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"alligator.jpg"]];
    
//    UIButton *botao = [UIButton
//                       buttonWithType:UIButtonTypeSystem];
//    [botao
//     setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
//     forState:UIControlStateNormal];
//    [botao sizeToFit];
    imagem.center = self.view.center;
    
    [self.view addSubview:imagem];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)next:(id)sender
{
    
    LetrasViewController *proximo = [[LetrasViewController alloc]
                                     initWithLetra:[letras objectAtIndex:indiceObj+1]];
                                     
    [proximo setTitle:[letras objectAtIndex:indiceObj+1]];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
   
}

//-(NSString *)setTitle
//{
//    for (int i = 0; i < 2; i++) {
//        
//        if(i == 0){
//        NSString *nome = @"B";
//        return nome;
//        }else if (i == 1)
//        {
//            NSString *nome = @"C";
//            return nome;
//        }else{
//            NSString *nome = @"D";
//            return nome;
//        }
//    }
//    
//    return nil;
//    
//}

@end
