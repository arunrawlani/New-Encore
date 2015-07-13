//
//  Playlist.swift
//  Algorhythm
//
//  Created by Soojin Ro on 3/8/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var votes : [Int] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index: Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        self.title = playlistDictionary["title"] as! String!
        self.description = playlistDictionary["description"]as! String!
        
        let iconName = playlistDictionary["icon"]as! String!
        self.icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        self.largeIcon = UIImage(named: largeIconName)
        
        self.artists += playlistDictionary["artists"] as! [String]
        
        self.votes += playlistDictionary["votes"] as! [Int]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String:CGFloat]
        self.backgroundColor = rgbColorFromDictionary(colorsDictionary)
    }
    
    func rgbColorFromDictionary(colorDictionary: [String:CGFloat]) -> UIColor {
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}