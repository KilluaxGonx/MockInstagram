//
//  CommentCell.swift
//  MockInstagram
//
//  Created by Recleph Mere on 10/18/21.
//

import UIKit

class CommentCell: UITableViewCell {
    
    
    
    @IBOutlet weak var author: UILabel!
    
    
    @IBOutlet weak var comment: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
