//
//  DSFViewController.m
//  IETXGAS
//
//  Created by douglas on 01/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DSFViewController.h"
#import "DSFEngine.h"

@interface DSFViewController (){

}
@property (strong, nonatomic) DSFEngine* engine;
@property (strong, nonatomic) IBOutlet UITextField *etanolPrice;
@property (strong, nonatomic) IBOutlet UITextField *gasPrice;
@property (strong, nonatomic) IBOutlet UILabel *resultDisplay;


@end

@implementation DSFViewController
@synthesize engine =_engine;
@synthesize etanolPrice = _etanolPrice;
@synthesize gasPrice = _gasPrice;
@synthesize resultDisplay = _resultDisplay;

- (IBAction)calculate:(UIButton *)sender {
   
    
    if(self.etanolPrice.text.length>0 && self.gasPrice.text.length >0){
        
        NSNumber* etanolValue= [NSNumber numberWithDouble:([self.etanolPrice.text doubleValue])] ;
      NSNumber* gasValue= [NSNumber numberWithDouble:([self.gasPrice.text doubleValue])];
        NSString* r = @"teste";
        double res= [self.engine calculate:etanolValue :gasValue];
        r = [NSString stringWithFormat:@"%g",res];
        self.resultDisplay.text =r;
        
    }
  //  self.resultDisplay.text=@"teste";
    
    
}

- (DSFEngine*)engine 
{
  if (!_engine) _engine = [[DSFEngine alloc] init];
 return _engine;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setEtanolPrice:nil];
    [self setGasPrice:nil];
    [self setResultDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
