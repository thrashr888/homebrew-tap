cask "habitable" do
  version "0.2.0"
  sha256 "7e36c6c1a89470dc4460a63fd5d9395087d87a4e28054169674db29576f0b685"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
