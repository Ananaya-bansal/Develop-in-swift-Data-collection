//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Ananaya on 11/04/24.
//

import UIKit

class AthleteFormViewController: UIViewController {
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var ageLabel: UITextField!
    @IBOutlet weak var LeagueLabel: UITextField!
    @IBOutlet weak var TeamLabel: UITextField!
  
    var athlete : Athlete?
    init?(coder: NSCoder, athlete: Athlete) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    func updateView(){
        if let athlete = athlete {
                   nameLabel.text = athlete.name
                   ageLabel.text = "\(athlete.age)"
                   LeagueLabel.text = athlete.league
                   TeamLabel.text = athlete.team
               }
    }

    @IBAction func saveButton(_ sender: Any) {
        guard let name = nameLabel.text,
            let ageString = ageLabel.text,
            let age = Int(ageString),
            let league = LeagueLabel.text,
            let team = TeamLabel.text else {return}
            athlete = Athlete(name: name, age: age, league: league,
            team: team)
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
