//
//  ViewController.swift
//  Giphy
//
//  Created by iOS on 14/06/22.
//

import UIKit


    
class ViewController: UIViewController {
    
    
    
    
    let Api_Search = "http://api.giphy.com/v1/gifs/search"
    let apiKey = "KcnQwqtiYcjHRgI05PMnqhcvkuY2ac7t"
    let limit = "1"

    
    var arrGiphy:[Datum] = []
    private var cellSizes = [[CGSize]]()

    
    @IBOutlet private(set) weak var collectionView: UICollectionView!

    
    
    
    fileprivate var currentTrendingPageOffset: Int = 0
    public var contentRating: SwiftyGiphyAPIContentRating = .pg13

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        SwiftyGiphyAPI.shared.getTrending(limit: 100, rating: contentRating, offset: currentTrendingPageOffset) {  (error, response) in
//
//            guard error == nil else {
//
//                print("Giphy error: \(String(describing: error?.localizedDescription))")
//                return
//            }
//        }
    }
}
