cask "habitable" do
  version "0.4.0"
  sha256 "1d6233fd63706e23c8694ccd06168d76f495d74fef485f1e656ff306d0d9409c"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Native workspace and plan manager for Terraform"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
