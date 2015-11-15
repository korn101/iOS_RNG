//
//  RandomNumberGenerator.swift
//  RandomNumberGenerator
//
//  Created by Gavin Fouche on 2015/11/15.
//  Copyright © 2015 Gavin Fouche. All rights reserved.
//

import Foundation

class RandomNumberGenerator {
    
    var x:Float = 0
    var y:Float = 0
    var z:Float = 0
    
    // class constructors:
    init()
    {
        // Use a random time-based seed.
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.Year.union(NSCalendarUnit.Minute), fromDate: date)
        
        x = Float(((components.year * components.minute) / 5))
        y = Float(components.year / components.minute)
        z = Float(((components.year * components.minute) / 10) + components.year % components.minute)
    }
    
    init(a:Float , b:Float, c:Float)
    {
        // initialise the generator with custom seeds.
        x = a
        y = b
        z = c
    }
    
    func WichmannHill() -> Float
    {
        
        x = 171 * (x % 177) - 2 * (x / 177);
        if ( x < 0 ) {
            x = x + 30269;
        }
        
        y = 172 * (y % 176) - 35 * (y / 176);
        if (y < 0 ) {
            y = y + 30307;
        }
        z = 170 * (z % 178) - 63 * (z / 178);
        if ( z < 0 ){
            z = z+30323;
        }
        
        
        return( x/30269.0 + y/30307.0 + z/30323.0 % 1 );
    }
    
    func MarsagliaBray() -> Float
    {
        var v1: Float = 0
        var v2: Float = 0
        var s: Float  = 1
        
        while (s >= 1)
        {
            v1 = (Float(2) * Float((Float(arc4random()) / Float(UINT32_MAX))))
            v2 = (Float(2) * Float((Float(arc4random()) / Float(UINT32_MAX))))
            s = v1*v1 + v2*v2;
            
        }
        
        return (v1 * (sqrt(-2 * log(s) / s)));
        
        
    }
    
    
}