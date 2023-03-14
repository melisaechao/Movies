//
//  MovieCell.swift
//  Movies
//
//  Created by Melissa Saechao on 3/3/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.original_title
        movieDescriptionLabel.text = movie.overview
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w500/" + movie.poster_path.absoluteString)!, into: movieImageView)
        //Nuke.loadImage(with: movie.poster_path, into: movieImageView)
    }
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    

}
