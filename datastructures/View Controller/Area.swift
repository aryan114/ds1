//
//  Area.swift
//  datastructures
//
//  Created by Amberkar, Aryan on 3/14/20.
//  Copyright © 2020 Aryan Amberkar. All rights reserved.
//

import Foundation
import UIKit
class AreaController: UIViewController {
    
    // IBOutlet connects to Storyboard items
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var base: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var area: UILabel!
    
    var inputidentifier = 0
    let display = (1, false, "Cannot Compute")
    //tuple above
    //allows you to choose your input type, changes this value as you click the button which allows you to execute different functions
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        area.text = "Area"
    }
    
    // IBAction created with Drag from Storyboard
    @IBAction func sqaure(sender: UIButton) {
        
        inputidentifier = 1
        
    }
    @IBAction func rectangle(sender: UIButton) {
        
        inputidentifier = 2
        
    }
    @IBAction func triangle(sender: UIButton) {
        
        inputidentifier = 3
        
    }
    @IBAction func circle(sender: UIButton) {
        
        inputidentifier = 4
        
    }
    @IBAction func calculate(sender: UIButton) {
        //the following code tests the variable inputidentifier and executes the different calculations between the area of a square, rectangle, triangle, and circle
        if (inputidentifier == 1) {
            //calculations if input is a square
            let length1 = Float(length.text!)
            let areaofsquare = (length1! * length1!)
            //returns back the calculation to UILabel
            area.text = String(areaofsquare)

        }
        
        if (inputidentifier == 2) {
            //calculations if input is a rectangle
            let length2 = Float(length.text!)
            let width1 = Float(width.text!)
            let areaofrectangle = (length2! * width1!)
            area.text = String(areaofrectangle)

        }
        
        if (inputidentifier == 3) {
            //calculations if input is a triangle
            let base1 = Float(base.text!)
            let height1 = Float(height.text!)
            let areaoftriangle = 1/2 * (base1! * height1!)
            area.text = String(areaoftriangle)
            
        }
        if (inputidentifier == 4) {
            //calculations if input is a circle
            let radius1 = Float(radius.text!)
            let areaofcircle = (3.14159 * (radius1! * radius1!))
            area.text = String(areaofcircle)
    }
        }
}
