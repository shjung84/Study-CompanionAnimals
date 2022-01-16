//
//  DescriptionViewController.swift
//  Study-CompanionAnimals
//
//  Created by SH.Jung on 2022/01/16.
//

import UIKit

class DescriptionViewController: UIViewController {
	
	// MARK: - Properties
	var animalInfo: AnimalInfo! // 암시적추출

	// MARK: -IBOutlet
	@IBOutlet var animalImageView: UIImageView!
	@IBOutlet var nameLabel: UILabel!
	@IBOutlet var descriptionTextView: UITextView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		self.navigationItem.title = self.animalInfo.name
		self.animalImageView.image = UIImage(named: self.animalInfo.imageName)
		self.nameLabel.text = self.animalInfo.name
		self.descriptionTextView.text = self.animalInfo.animalDescription
	}

	/*
	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		// Get the new view controller using segue.destination.
		// Pass the selected object to the new view controller.
	}
	*/

}
