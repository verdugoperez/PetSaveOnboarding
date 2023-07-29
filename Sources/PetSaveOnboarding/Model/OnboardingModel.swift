import SwiftUI
/*
 1- Creates title, description and image to hold the data that appears on each page of the onboarding screen.
 2- These properties hold the titles for the Next and Skip buttons shown on each page.
 3- This is an initializer with default titles for the buttons.
 */

public struct OnboardingModel: Identifiable {
  public let id = UUID()
  // 1
  let title: String
  let description: String
  let image: Image

  // 2
  let nextButtonTitle: String
  let skipButtonTitle: String

  // 3
  public init(
    title: String,
    description: String,
    image: Image,
    nextButtonTitle: String = "Next",
    skipButtonTitle: String = "Skip") {
      self.title = title
      self.description = description
      self.image = image
      self.nextButtonTitle = nextButtonTitle
      self.skipButtonTitle = skipButtonTitle
    }
}
