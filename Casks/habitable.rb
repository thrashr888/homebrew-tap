cask "habitable" do
  version "0.6.1"
  sha256 "fcdf76764be19f23669929fd077f5ea75d04ec55e5e91e410785de32c7565c77"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Your Terraform resources on a map, with HCP Terraform built in"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
