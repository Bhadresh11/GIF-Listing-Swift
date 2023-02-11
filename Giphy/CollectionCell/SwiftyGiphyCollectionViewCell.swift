//
//  SwiftyGiphyCollectionViewCell.swift
//  Giphy
//
//  Created by iOS on 15/06/22.
//

import UIKit
import SDWebImage

class SwiftyGiphyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var btnFavorite: UIButton!
    @IBOutlet weak var viewImage: UIImageView!
    static let identifire = "SwiftyGiphyCollectionViewCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewBackground.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)
        viewBackground.clipsToBounds = true
        
        btnFavorite.setImage(UIImage(named: "FavUnfill"), for: .normal)
        btnFavorite.backgroundColor = .gray.withAlphaComponent(0.1)
        btnFavorite.roundCorners(radius: 20)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        viewImage.sd_cancelCurrentImageLoad()
        viewImage.sd_setImage(with: nil)
        viewImage.image = nil
    
    }
    

    func configureFor(imageSet: Images?,isfavorite: Bool = false)
    {
        self.roundCorners(radius: 4)
        viewImage.sd_imageIndicator = SDWebImageActivityIndicator.gray

        if let url = URL(string: imageSet?.previewGIF.url ?? ""){
            viewImage.sd_setImage(with: url)
        }
        
        if isfavorite {
            btnFavorite.setImage(UIImage(named: "FavFill"), for: .normal)
        }else{
            btnFavorite.setImage(UIImage(named: "FavUnfill"), for: .normal)
        }
    }
    
}
