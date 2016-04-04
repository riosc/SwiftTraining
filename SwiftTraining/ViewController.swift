//
//  ViewController.swift
//  SwiftTraining
//
//  Created by Carlos David Rios Vertel on 4/1/16.
//  Copyright © 2016 Carlos Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Variables types
        
        let maximumNumberOfLoginAttempts = 10
        var currentLoginAttempt = 0
        
        //Single line declaration
        var x = 0.0, y = 0.0, z = 0.0
        
        
        //Variable Annotation
        let welcome : String = "Hello"
        
        
        //Multiple declaration with Annotation
        var red, green, blue : Double
        
        
    
        
        //Reserved word as variable
        let `var` = self;
        var `let` = `var`;
        
        

        
        //Printing
        let name = "carlos"
        print(name, terminator: "")
        
        
        //String interpolation
        print("my name is \(name)");
        
        
        
        //Integers
        let min = UInt8.min;
        let max = UInt8.max;
        
        print(min, max) //0-255
        
        //Int
        let num1 = 23; //Int take default size platform
        
        
        
        //Double
        let fl : Float = 3.4;
        print(fl)
        
        //Numerica Literals
        let dec = 30 //decimal
        let bin = 0b01 //binary
        let oct = 0o01 //octal
        let hex = 0x11 //hexagenicimal
        
        
        //Number oxpenent lieteral
        
        let expDec = 1.25e2
        let expHex = 0xFp2

        
        //Number formatting 
        let oneMillion = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_0001
        
        
        print(justOverOneMillion)
        
        
        //Numeric Type Conversion
        let num8:UInt8 = UInt8.max;
        
        let twoThousand : UInt16 = 2_000
        let one : UInt8 = 1;
        
        let sum = twoThousand + 4_333;
        
        
        //Integer and Floating-Point Conversion
        let three = 3
        let fourPointThree = 4.3
        
        let pi = Double(three) + fourPointThree
        
        
        let integerPi = Int(pi) // The value of Pi is truncated
        
        
        
        let lit = 3.4 + 2 //This sum is inferred because the type isn't evaluated by the compiler
        
        
        
        //MARK: Type Aliases
        
        typealias eigthBits = UInt8;
        
        let num88 : eigthBits = UInt8.max;
        
        
        //MARK: Booleans
        
        let i = 1 == 1
        
        if i {
            print("NO COMPILE")
        }
        
        
        //MARK: Tuples
        //Tuples are useful for temporary groups of related values. They are not suited to the creation of complex data structures. If your data structure is likely to persist beyond a temporary scope, model it as a class or structure, rather than as a tuple
        
        let httpErrorNotFound = (404,"Not Found")
        
        let (errorCode, errorDesc) = httpErrorNotFound;
        
        print(errorCode)
        print(errorDesc)
        
        //Ignoring tuples values
        
        let (errorCode1,_) = httpErrorNotFound;
        print("The error code is \(errorCode1)")
        
        
        print("Error Code \(httpErrorNotFound.0)")
        print("Error Desc \(httpErrorNotFound.1)")
        
        
        //Naming individual elements
        
        let internalError = (errorCode:500,errorDesc:"Internal Server Error")
        
        
        
        
        //MARK: Optionals
        //Optional works for any types
        //Optionals only can conatins 2 values, a value for the data type or nil
        //
        
        let posibleNumber = "123"
        let convertedNumber = Int(posibleNumber)
        
        print(convertedNumber)
        
        
        var de = 90;
        
        //MARK: nil
        
        var serverResponseCode : Int? = 404
        serverResponseCode = nil;
        
        var surveyAnswer : String?
        
        
        //MARK: If Statements and Forced Unwrapping
        
        
        if convertedNumber != nil{
            print("The converted number is \(convertedNumber)")
        }
        
        
        //MARK: Optional Binding
        //Available for `while` and `if`
        
        if let n = convertedNumber{
            print("number \(n)")
        }
        
        if let actualNumber = Int(posibleNumber){
        
            print("\"\(convertedNumber)\" has an integer value of \(actualNumber)")
            
        }else{
            print("\"\(posibleNumber)\" could not be converted to an Integer")
        }
        
        
        if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber < secondNumber{
            print("\(firstNumber) < \(secondNumber)")
        }
        
        //MARK: Implicitly Unwrapped Optionals
        let possibleString:String? = "An optional string."
        let foredString : String = possibleString!
        
        let assumedSTring : String! = "An optionla String"
        let implicidString : String = assumedSTring;
        
        
        let optionaImplicit : String? = nil;
        
        let another = optionaImplicit;
        print("\"(another)\" Conversion")
        
        
        
        do{
            try canThrowAnError()
        }catch{
        
            
        }
        
        //MARK: Debugging with Assertions
        
        
        let nonNegative = -2
        assert(nonNegative > 0, "Number can not be negative")
        
        
    }

    //MARK: Error Handling

    func canThrowAnError(){
        // this function may or may not throw an error
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
 
}

