//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by Soojin Ro on 3/8/15.
//  Copyright (c) 2015 NSoojin. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitleLabel: UILabel!
    @IBOutlet weak var playlistDescriptionLabel: UILabel!
    
    @IBOutlet weak var songTableView: UITableView!
    
    var songs : [String]?
    
    var playlist: Playlist?
    
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songTableView.dataSource = self
        songTableView.delegate = self
        songTableView.registerClass(SongTableViewCell.self, forCellReuseIdentifier: "SongTableViewCell")
        // Do any additional setup after loading the view.
        if let playlist = self.playlist {
            playlistCoverImage.image = playlist.largeIcon
            playlistCoverImage.backgroundColor = playlist.backgroundColor
            playlistTitleLabel.text = playlist.title
            playlistDescriptionLabel.text = playlist.description
            
            playlistArtist0.text = playlist.artists[0]
            playlistArtist1.text = playlist.artists[1]
            playlistArtist2.text = playlist.artists[2]
            songs = [playlist.artists[0], playlist.artists[1], playlist.artists[2]]
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "SongTableViewCell"
        let cell = songTableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! SongTableViewCell
        let song = songs![indexPath.row]
        //cell.titleLabel = song
        cell.textLabel?.text = song
        // Configure the cell...
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
}

