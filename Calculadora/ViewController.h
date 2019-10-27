//
//  ViewController.h
//  Calculadora
//
//  Created by Juan Antonio Alvarez Fernandez on 27/10/2019.
//  Copyright © 2019 Juan Antonio Alvarez Fernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *pantalla;
float Numero;
float segundoNumero;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *pantalla;
- (IBAction)operadores:(id)sender;

- (IBAction)numero:(id)sender;

- (IBAction)igual:(id)sender;

@end

