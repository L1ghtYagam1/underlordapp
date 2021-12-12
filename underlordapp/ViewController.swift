//
//  ViewController.swift
//  underlordapp
//
//  Created by Ярослав Щёголев on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGren: UISlider!
    @IBOutlet weak var SliderBlue: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var grenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        colorView.layer.cornerRadius = 15
               
               sliderRed.minimumTrackTintColor = .red
               sliderGren.minimumTrackTintColor = .green
               
               setColor()
               setValue(for: redLabel, grenLable, blueLable)
           }
           
           @IBAction func rgbSlider(_ sender: UISlider) {
               setColor()
               switch sender {
               case sliderRed:
                   redLabel.text = string(from: sliderRed)
               case sliderGren:
                   grenLable.text = string(from: sliderGren)
               default:
                   blueLable.text = string(from: SliderBlue)
               }
           }
           
           private func setColor() {
               colorView.backgroundColor = UIColor(
                   red: CGFloat(sliderRed.value),
                   green: CGFloat(sliderGren.value),
                   blue: CGFloat(SliderBlue.value),
                   alpha: 1
               )
           }
           
           private func setValue(for labels: UILabel...) {
               labels.forEach { label in
                   switch label {
                   case redLabel:
                       redLabel.text = string(from: sliderRed)
                   case grenLable:
                       grenLable.text = string(from: sliderGren)
                   default:
                       blueLable.text = string(from: SliderBlue)
                   }
               }
           }
           
           private func string(from slider: UISlider) -> String {
               String(format: "%.2f", slider.value)

    }


}

