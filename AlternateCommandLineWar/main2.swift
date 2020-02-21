//
//  main.swift
//  AlternateCommandLineWar
//
//  Created by Gordon, Russell on 2020-02-12.
//  Copyright © 2020 Gordon, Russell. All rights reserved.
//

import Foundation

class BeggarThyNeighbor {
    
    
    //creates suit
    enum Suit: Int {
        case clubs = 1, spades, diamonds, hearts
    }
    
    //gives numeric values to the facecards
    enum faceCard: Int {
        case jack = 1, queen, king, ace
    }
    
    //gives numeric values to the regular cards
    enum Value: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
    }
    
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
        offense = Hand(description: "Who is at offense?")
        defense = Hand(description: "Who is at defense?")
        pot = Hand(description: "pot")
        
        reportStatus()
        
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
    
    //call this function after each individual round
    func reportStatus() {
        print("The player's hand has \(player) cards and the computer's hand has \(computer) cards.")
    }
    
   
    //start the game
    func play() {
        
    }
    
    //
    func addToPot () {
        
    }
    
    //call this function after each individual round
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
