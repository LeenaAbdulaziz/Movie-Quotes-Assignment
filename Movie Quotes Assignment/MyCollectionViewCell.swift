//
//  MyCollectionViewCell.swift
//  Movie Quotes Assignment
//
//  Created by Linah abdulaziz on 16/05/1443 AH.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    static let identifier = "MyCell"
    
    public func configure(image: UIImage, name: String){
        movieName.text = name
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
    }
    
    static func nib() -> UINib{
    return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
