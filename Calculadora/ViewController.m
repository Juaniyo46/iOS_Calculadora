//
//  ViewController.m
//  Calculadora
//
//  Created by Juan Antonio Alvarez Fernandez on 27/10/2019.
//  Copyright © 2019 Juan Antonio Alvarez Fernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    operador = [[NSString alloc] init];
    NSUserDefaults *memory = [NSUserDefaults standardUserDefaults];
    [memory setFloat:0 forKey:@"memory"];
}


- (IBAction)operadores:(id)sender {
    
    numero = [_pantalla.text floatValue];
    operador = [(UIButton*) sender currentTitle];
    _pantalla.text = @"";
}

- (IBAction)numero:(id)sender {
    
    _pantalla.text = [[NSString alloc] initWithFormat:@"%@%@", _pantalla.text, [(UIButton*) sender currentTitle]];
}

- (IBAction)igual:(id)sender {
    
    segundoNumero = [_pantalla.text floatValue];
    NSNumber *result = [[NSNumber alloc] init];
    
    if ([operador isEqualToString:@"-"]){
        result = @(numero - segundoNumero);
        _pantalla.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operador isEqualToString:@"+"]){
        result = @(numero + segundoNumero);
        _pantalla.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operador isEqualToString:@"/"]){
        result = @(numero / segundoNumero);
        _pantalla.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operador isEqualToString:@"X"]){
        result = @(numero * segundoNumero);
        _pantalla.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operador isEqualToString:@"%"]){
        numero /= 100;
        result = @(numero * segundoNumero);
        _pantalla.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operador isEqualToString:@"C"]){
        numero = 0;
        segundoNumero = 0;
        _pantalla.text = @"";
    }
}


@end
