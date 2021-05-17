//
//  ViewController.swift
//  Final Year
//
//  Created by Joel James on 05/05/2020.
//  Copyright © 2020 Joel James. All rights reserved.
//

import UIKit
import iOSDropDown
class ViewController: UIViewController {
    /* outlets */
    
    
    @IBOutlet weak var formationMenu: DropDown!
    /* position buttons*/
    @IBOutlet var strikers: [UIButton]!
    @IBOutlet var wingers: [UIButton]!
    @IBOutlet var widemidfielders: [UIButton]!
    @IBOutlet var centremids: [UIButton]!
    @IBOutlet var wingbacks: [UIButton]!
    @IBOutlet var fullbacks: [UIButton]!
    @IBOutlet var centrebacks: [UIButton]!
    @IBOutlet weak var gk: UIButton!
    @IBOutlet var positionButtons: [UIButton]!
    /* label outlets*/
    @IBOutlet weak var PositionLabel: UILabel!
    @IBOutlet weak var formationInfo: UILabel!
    /* formation buttons */
    @IBOutlet var fourfourtwo: [UIButton]!
    @IBOutlet var fourthreethree: [UIButton]!
    @IBOutlet var fourfiveone: [UIButton]!
    @IBOutlet var fourtwofour: [UIButton]!
    @IBOutlet var threefivetwo: [UIButton]!
    @IBOutlet var threefourthree: [UIButton]!
    @IBOutlet var fivefourone: [UIButton]!
    @IBOutlet var fivethreetwo: [UIButton]!
    @IBOutlet var fivetwothree: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting array of formations
        formationMenu.optionArray = ["4-4-2","4-3-3","4-5-1","4-2-4","3-5-2","3-4-3","5-4-1","5-3-2","5-2-3"]
        
        // Do any additional setup after loading the view.
    }
    
    /* function to hide position buttons*/
    func hideButton() {
        positionButtons.forEach{(button) in
            UIView.animate(withDuration: 0, animations: {
                button.alpha = 0
              })
        }
    }
    
    /* formation buttons code for when presed*/
    @IBAction func handleSelection(_ sender: UIButton) {
        // if the 442 is selected from the menu
        if formationMenu.selectedIndex == 0 {
            hideButton()
            fourfourtwo.forEach{(button) in
            UIView.animate(withDuration: 0.0, animations: {
            button.alpha = 1
            })
        }
            self.formationInfo.text = "Throughout Football history the 4-4-2 has always been seen as the standard formation. Every Player knows how to play in it as it as every position has a clear role and expectations. It is a very simple formation that doesn't require a high level of tactical discipline. It is easy to implement at any level of the game. "
        }
        //if the 433 is selected
        else if formationMenu.selectedIndex == 1 {
        hideButton()
        fourthreethree.forEach{(button) in
        UIView.animate(withDuration: 0.0, animations: {
        button.alpha = 1
        })
    }
        self.formationInfo.text = "The 4-3-3 is an attacking formation that focuses on controlling the midfield by taking advantage of the flexibility of the midfield. With midfield control, the 3 forwards can force the opposition towards their own goal. The 3 midfielders can be flexible allowing them to play different roles e.g. 1 or 2 midfielders could play as defensive midfielders."
    
    }
        //if the 451 is selected
        else if formationMenu.selectedIndex == 2 {
            hideButton()
            fourfiveone.forEach{(button) in
            UIView.animate(withDuration: 0.0, animations: {
            button.alpha = 1
            })
            }
            self.formationInfo.text = "4-5-1 is a defensive formation that can be used as an attacking if changed slightly. This formation can play as a 4-2-3-1 which is a very defensive formation with 2 densive mids in front of a back 4. The solo striker can be isolated quickly if the 3 central midfielders can't help them get goal scoring opportunities. Many teams become a 4-3-3 when attacking to help the striker."
    }
        //if the 424 is selected
        else if formationMenu.selectedIndex == 3 {
            hideButton()
            fourtwofour.forEach{(button) in
                UIView.animate(withDuration: 0.0, animations: {
                button.alpha = 1
                })
            }
            self.formationInfo.text = "The 4-2-4 aims to combine a strong attack with a strong defense. This formation acts as either 6 attackers or 6 defenders by the 2 midfielders acting as attackers or defenders depending on the situation. This formation requires the defenders to help out the midfield as the midfield is relatively empty with only 2 midfielders."

    }
        //if the 352 is selected
        else if formationMenu.selectedIndex == 4 {
            hideButton()
            threefivetwo.forEach{(button) in
                UIView.animate(withDuration: 0.0, animations: {
                button.alpha = 1
                })
            }
            self.formationInfo.text = "3-5-2 is a demanding formation for the left/right midfielders as they have to run up and down the pitch all game. If used properly the 3-5-2 can be very effective. The midfield can be very flexible and allows the coach to make the formation more offensive or defensive. The 3-5-2 can become a 5-3-2 when defending which is a much more solid formation for defending."
    
    }
        //if the 343 is selected
        else if formationMenu.selectedIndex == 5 {
            hideButton()
            threefourthree.forEach{(button) in
                UIView.animate(withDuration: 0.0, animations: {
                button.alpha = 1
                })
            }
            self.formationInfo.text = "3-4-3 is a tactically demanding formation and requires each player to understand their role on and off the ball. If they don't the 3-4-3 can be easly overwhelmed in defence as there becomes gaps in the back. If the defence is disciplined then the forwards can to attack for a lot of the game."
        }
        //if the 541 is selected
        else if formationMenu.selectedIndex == 6 {
            hideButton()
            fivefourone.forEach{(button) in
                UIView.animate(withDuration: 0.0, animations: {
                button.alpha = 1
                })
            }
            self.formationInfo.text = "5-4-1 is a very defensive formation and is quite good when combined with counterattacks. It allows the team to defend well with a back 5 and a low midfield. Similar to the 5-3-2 it is used to get a draw or grind a win often against bigger teams."
    }
        //if the 532 is selected
        else if formationMenu.selectedIndex == 7 {
        hideButton()
        fivethreetwo.forEach{(button) in
            UIView.animate(withDuration: 0.0, animations: {
            button.alpha = 1
            })
        }
        self.formationInfo.text = "5-3-2 is a very defensive formation that can be tough for a team to break down and has been used by many teams e.g. Brazil in 2002 used it and won the World Cup. This formation is often used by teams that want to sit back and play for a draw or grind a win against a better team. The centrebacks play as back 3 with wingbacks that attack and defend and need good stamina for this formation."
        }
    }
    @IBAction func positionClickes(_ sender: UIButton) {
        PositionLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        /* info for player*/
        if strikers.contains(sender){
            PositionLabel.text = "The role is strikers is to score goals. They need to be able to peel off defenders and run into space. They are the forward"
        }
        else if wingers.contains(sender){
            PositionLabel.text = "The role of wingers to attack on the wings and provide cut-backs or crosses for the strikers to score."
        }
        else if widemidfielders.contains(sender){
            PositionLabel.text = "The role of the wide midfielders is to help out both defense and offense."
        }
        else if centremids.contains(sender){
            PositionLabel.text = "Centre midfielders can play as attacking midfielders or defensive midfielders or a mix of both. They provide a link between attack and defensive and support their team."
        }
        else if wingbacks.contains(sender){
            
            PositionLabel.text = "The role of the wingbacks is to defend like a full back but unlike full backs they have a responsibilty to join the attack and play as wingers."
        }
        else if fullbacks.contains(sender){
            PositionLabel.text = "The role of the fullbacks is to defend against the wingers. The fullbacks tend not to join the attack."
        }
        else if centrebacks.contains(sender){
            PositionLabel.text = "The role of the centrebacks is stop oposing player from scoring and bring the ball out of the 18 yard box."
        }
        else if gk.contains(sender){
            PositionLabel.text = "The role of the goalkeeper is to stop shots at goal."
        }
    }
}

