//
//  TouristPlaceDetailsViewController.swift
//  Paris Guide
//
//  Created by Bharat Nagandla on 5/25/18.
//  Copyright © 2018 Bharat Nagandla. All rights reserved.
//

import UIKit

class TouristPlaceDetailsViewController: UIViewController {

    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeDescription: UITextView!
    
    var selectedPlaceImage = UIImage()
    var selectedPlaceName: String = ""
    var selectedPlaceDetails: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
        placeImage.image = selectedPlaceImage
        placeName.text = selectedPlaceName
        placeDescription.text = selectedPlaceDetails
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
