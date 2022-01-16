//
//  File.swift
//  Study-CompanionAnimals
//
//  Created by SH.Jung on 2022/01/16.
//

import UIKit

struct AnimalInfo: Codable {
	let name: String
	let animalDescription: String
	var imageName: String
	
	static func decode(from assetName: String) -> AnimalInfo? {
		guard let asset: NSDataAsset = NSDataAsset(name: assetName) else {
			print("에셋 로드 실패")
			return nil
		}
		
		do {
			let decoder: PropertyListDecoder = PropertyListDecoder()
			return try decoder.decode(AnimalInfo.self, from: asset.data)
		} catch {
			print("데이터 디코딩 실패")
			print(error.localizedDescription)
			return nil
		}
	}
}
