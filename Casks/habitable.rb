cask "habitable" do
  version "0.4.0"
  sha256 "1e0fb9da0e26b77a9946e10b090beb1a481fb18f5d2d4123312363f59b00e421"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
