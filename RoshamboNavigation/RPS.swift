/*
 *  RPS.swift
 *  RoshamboNavigation
 *
 *  Created by Paul Lewallen on 6/11/23.
 *
 */

import UIKit

// MARK: - RPS: Comparable
enum RPS : Comparable {
    case rock, paper, scissors

    init() {
        switch arc4random() % 3 {
        
        case 0 :
            self = .rock
        case 1 :
            self = .paper
        default :
            self = .scissors
        }
    }
}

// MARK: - RPS (Comparison)
func <(lhs : RPS, rhs : RPS) -> Bool {
    
    switch (lhs, rhs) {
    case (.rock, .paper), (.paper, .scissors), (.scissors, .rock) :
        return true;
    default :
        return false;
    }
}

// MARK: - RPS: CustomStringConvertible
extension RPS : CustomStringConvertible {
    
    var description : String {
        get {
            switch (self) {
            case .rock :
                return "Rock"
            case .paper :
                return "Paper"
            case .scissors :
                return "Scissors"
            }
        }
    }
}
