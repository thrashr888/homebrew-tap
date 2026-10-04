cask "habitable" do
  version "0.5.0"
  sha256 "468f6c24228b45f15d051fcb49399b36bf6573f935bbf05a0ba1efdab36b5eed"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
