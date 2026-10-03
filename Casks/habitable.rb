cask "habitable" do
  version "0.4.4"
  sha256 "686acb1655a8940d4ceb320fa10865dec920a03a6fb2f05818ef993739eca5bc"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
