//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by ali hashmi on 29/08/20.
//  Copyright © 2020 ali hashmi. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }
    
    @IBOutlet var nxtBtn: BorderButton!
    @IBAction func nextSegue(_ sender: BorderButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    
    }
    
    @IBAction func mensBtn(_ sender: Any)
    {
        selectedLeague(leagueType: "mens")
    }
    
    @IBAction func womensBtn(_ sender: Any)
    {
        selectedLeague(leagueType: "womens")
    }
    
    
    @IBAction func coedBtn(_ sender: Any)
    {
        selectedLeague(leagueType: "Co-ed")
    }
  
    func selectedLeague(leagueType : String)
   {
    player.desiredLeague = leagueType
    nxtBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinaton = segue.destination as? SkillVC
        {
            destinaton.player = player
            
        }
    }

}
