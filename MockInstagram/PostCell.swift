//
//  PostCell.swift
//  MockInstagram
//
//  Created by Recleph Mere on 10/12/21.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet weak var photoView: UIImageView!
    
    
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var author: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
