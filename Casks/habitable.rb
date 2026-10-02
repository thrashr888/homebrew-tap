cask "habitable" do
  version "0.4.1"
  sha256 "54e58a96f7126e97948ff0941045efc3799eab2b3b4e8a2bef4551484c95c8bf"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
