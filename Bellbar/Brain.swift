//
//  Brain.swift
//  Bellbar
//
//  Created by Roshan Patel on 8/7/15.
//  Copyright (c) 2015 Roshan Patel. All rights reserved.
//

import Foundation

class Brain
{
    
    var totalWeight: Double;
    var runningWeight: Double;
    
    init(userInput: Int){
        totalWeight = Double(userInput);
        runningWeight = (totalWeight-45)/2;
    }
    
    
    
    
    func divide( switch2: Bool, switch5: Bool, switch10: Bool, switch25:Bool, switch35:Bool, switch45:Bool ) -> String{
    
        var numPlates = [0, 0, 0, 0, 0, 0]
        var switches = [switch45, switch35, switch25, switch10, switch5, switch2];
        var plateWeights = [45, 35, 25, 10, 5, 2.5]
        
        if(runningWeight%2.5 != 0){
            return "This weight is not a multiple of 2.5"
        }
        
        
        /* Loop through and deduct the allowable if cooresponding switch is turned on */
        var i = 0;
        while(runningWeight != 0){
            
            if(switches[i]){
                numPlates[i] = numberOfPlatesNeeded(plateWeights[i]);
            }
            i++;
        }
        
        
        /* FULL OUTPUT RETURN STRING WOW THIS IS UGLY*/
        return "Each side will need\n" + String(numPlates[0]) + " x45\t" + String(numPlates[1]) + " x35\n" + String(numPlates[2]) + " x25\t" + String(numPlates[3]) + " x10\n" + String(numPlates[4]) + " x5  \t" + String(numPlates[5]) + " x2.5"
    }
    
    
    
    
    
    /* Returns the number of a specified plate needed.  Updates and operates on the runningWeight */
    func numberOfPlatesNeeded(plateWeight: Double)->Int{
    
        if(runningWeight < plateWeight){
            return 0;
        }else{
            
            var temp = runningWeight%plateWeight;
            var numplates = Int((runningWeight - temp )/plateWeight);
            runningWeight = temp;
            
            return numplates;
            
        }
    }
    
    
    
    
}