//
//  IntroductionViewController.swift
//  Makestagram
//
//  Created by George Tamer on 7/11/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import UIKit
import Alamofire

class IntroductionViewController: UIViewController {
    
    @IBOutlet weak var weatherLabel: UILabel?
    
/*
    func getConditions (){
        
        let url = NSURL(string: "http://api.wunderground.com/api/b5542e67d122f49d/conditions/q/CA/San_Francisco.json")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
            
    
            
        }
        
        task.resume()
        
        

        
    }
    
    */
    
    //temporary comment
    override func viewDidLoad() {
        super.viewDidLoad()
        weatherLabel?.text = "The weather is partly cloudy, 75 degrees F"
       /*
        // Do any additional setup after loading the view.
        
        Alamofire.request(.GET, "http://api.wunderground.com/api/b5542e67d122f49d/conditions/q/CA/San_Francisco.json").responseJSON() {
            (_, _, JSON, _) in
           
            var weatherInfo = (JSON!.valueForKey("dewpoint_f") as! [NSDictionary])
            
            println(weatherInfo)
        }
*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
