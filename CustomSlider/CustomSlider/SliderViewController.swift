//
//  SliderViewController.swift
//  CustomSlider
//
//  Created by Ciara Beitel on 3/11/20.
//  Copyright © 2020 Ciara Beitel. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    
    //Create outlets for slider and valueLabel
    
    //Creat action for sliderValue and make it a class of `CustomSlider`
        //update text in label to show value changed from slider
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Default the label to say "0% satisfied"
        //Programmatically changed the min track tint color
        //Programmatically changed the max track tint color
        //Programmatically set the thumb image on the slider
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowColorsVCSegue" {
            let destinationVC = segue.destination as? ColorsViewController
        }
    }
}

//Create a class for a CustomSlider of type UISlider
class CustomSlider: UISlider {
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let point = CGPoint(x: bounds.minX, y: bounds.midY)
        return CGRect(origin: point, size: CGSize(width: bounds.width, height: 20)) // height changes the height of the slider
    }
}
