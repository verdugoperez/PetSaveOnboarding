import SwiftUI
/*
 1- This structure contains the pet’s image and the position shown on the onboarding background view.
 2- A list of pets with some tried and tested positions that look good on the view.
 */
// 1
struct Pet: Identifiable {
  let id = UUID()
  let petImage: Image
  let position: CGPoint
}

// 2
extension Pet {
  static let backgroundPets: [Pet] = {
    let bounds = UIScreen.main.bounds
    return [
      Pet(petImage: .bird, position: .init(x: bounds.minX + 50, y: 20)),
      Pet(petImage: .catPurple, position: .init(x: bounds.maxX, y: bounds.maxY / 2)),
      Pet(petImage: .catPurr, position: .init(x: bounds.maxX, y: bounds.maxY - 100)),
      Pet(petImage: .chameleon, position: .init(x: bounds.minX, y: bounds.maxY / 2)),
      Pet(petImage: .dogBoneStand, position: .init(x: bounds.minX, y: bounds.maxY / 1.5)),
      Pet(petImage: .dogBone, position: .init(x: bounds.maxX - 50, y: 50)),
      Pet(petImage: .dogTennisBall, position: .init(x: bounds.minX, y: bounds.maxY - 10))
    ]
  }()
}
