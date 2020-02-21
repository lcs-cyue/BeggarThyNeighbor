//
//  main.swift
//  AlternateCommandLineWar
//
//  Created by Gordon, Russell on 2020-02-12.
//  Copyright © 2020 Gordon, Russell. All rights reserved.
//

import Foundation

class BeggarThyNeighbor {
    
    //Create a deck of cards
    var deck: Deck
    
    // The hands for each player
    var player : Hand
    var computer : Hand
    var offense : Hand
    var defense : Hand
    
    //The pot
    var pot : Hand
    
    //Initialize the hands
    init() {
        deck = Deck()
        
        player = Hand(description:"player")
        computer = Hand(description:"computer")
        pot = Hand(description: "pot")
        
        //Deal to the player
        if let newCards = self.deck.randomlyDealOut(thisManyCards: 26) {
            player.cards = newCards
        }
        
        // Deal to the computer
        if let newCards = self.deck.randomlyDealOut(thisManyCards: 26) {
            computer.cards = newCards
        }
        
        // Bounty is empty to begin
        pot.cards = []
    }
    //aight
    
    
    func switchWhoIsOffense () {
        
        if player === offense {
            offense = computer
            defense = player
            
        } else {
            
            defense = computer
            offense = player
            
        }
    }
}
