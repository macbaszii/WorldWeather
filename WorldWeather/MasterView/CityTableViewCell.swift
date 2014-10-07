//
//  CityTableViewCell.swift
//  WorldWeather
//
//  Created by Kiattisak Anoochitarom on 10/7/2557 BE.
//  Copyright (c) 2557 RayWenderlich. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet var cityImageView: UIImageView!
    @IBOutlet var cityNameLabel: UILabel!
    
    // MARK: - Properties
    var cityWeather: CityWeather? {
        didSet {
            configureCell()
        }
    }
    
    // MARK: - Utility methods
    func configureCell() {
        cityImageView.image = cityWeather?.cityImage
        cityNameLabel.text = cityWeather?.name
    }
}
