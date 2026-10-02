cask "habitable" do
  version "0.4.2"
  sha256 "c791b3e576c37365f280d050304eaca49b55175cc240a1e2c15c2b1d686f04e3"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
