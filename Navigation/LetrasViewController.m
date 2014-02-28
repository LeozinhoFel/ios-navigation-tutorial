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

int indiceObj =0;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        allWords = [[Singleton alloc]init];
        letras = [allWords retornarLetras ]; // pega todas as MutableArrays e armazena em uma mutableArray da classeView
        
        wordDic = [[Dicionario alloc]init];
        wordDic = [letras objectAtIndex:0]; // Pega o primeiro Objeto do tipo Singleton
      //  indiceObj = [letras indexOfObject:wordDic];
        title = [[wordDic dicionarioCompleto]objectAtIndex:0];
        imagemAni = [[wordDic dicionarioCompleto]objectAtIndex:1];
        nomeAni = [[wordDic dicionarioCompleto]objectAtIndex:2];

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
        imagemAni = [[wordDic dicionarioCompleto]objectAtIndex:1];
        nomeAni = [[wordDic dicionarioCompleto]objectAtIndex:2];


        
        
        
    }
    return self;



}

-(IBAction)play:(id)sender
{
    AVSpeechUtterance *utterance = [AVSpeechUtterance  speechUtteranceWithString:nomeAni];
    
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"pt-BR"];
    
    AVSpeechSynthesizer *sintVoz = [[AVSpeechSynthesizer alloc]init];
    
    [sintVoz speakUtterance:utterance];
    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
   
    NSString *soundFilePath = [NSString stringWithFormat:@"%@/test.m4a",
                               [[NSBundle mainBundle] resourcePath]];
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL
                                                                   error:nil];
    player.numberOfLoops = -1; //Infinite
    
    [player play];
    
    self.title = title;
    
   
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIImageView *imagem = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imagemAni]];
    
    UIButton *botao = [UIButton
                       buttonWithType:UIButtonTypeSystem];
    botao.frame = CGRectMake(40, 340, 40, 30);
    
    
    [botao addTarget:self action:@selector(play:) forControlEvents:UIControlEventTouchUpInside];
    
    [botao setImage:[UIImage imageNamed:@"10365.png"] forState:UIControlStateNormal];
    
    [botao sizeToFit];
    [self.view addSubview:imagem];
    [self.view addSubview:botao];
    imagem.center = self.view.center;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next:(id)sender
{
    
    indiceObj = indiceObj +1;
    LetrasViewController *proximo = [[LetrasViewController alloc]
                                     initWithLetra:[[allWords retornarLetras ] objectAtIndex:indiceObj]];
    
    
                                     
//    [proximo setTitle:[letras objectAtIndex:indiceObj]];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
   
   
}



@end
