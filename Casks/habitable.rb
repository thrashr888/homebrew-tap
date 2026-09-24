cask "habitable" do
  version "0.3.0"
  sha256 "067be909368dad8de81290627865a597202128ef98c93755f6a2734151f82d8c"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
