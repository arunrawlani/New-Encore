//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Soojin Ro on 3/8/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitleLabel: UILabel!
    @IBOutlet weak var playlistDescriptionLabel: UILabel!
    
    var playlist: Playlist?
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let playlist = self.playlist {
            playlistCoverImage.image = playlist.largeIcon
            playlistCoverImage.backgroundColor = playlist.backgroundColor
            playlistTitleLabel.text = playlist.title
            playlistDescriptionLabel.text = playlist.description
            
            playlistArtist0.text = playlist.artists[0]
            playlistArtist1.text = playlist.artists[1]
            playlistArtist2.text = playlist.artists[2]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
}
