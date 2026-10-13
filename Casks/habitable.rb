cask "habitable" do
  version "0.6.0"
  sha256 "df3832181e0ddd21ee05e6b5febd7fc32d2cb006369de75b76d94689beab61b4"

  url "https://github.com/thrashr888/homebrew-tap/releases/download/habitable-v#{version}/Habitable-#{version}-macos-universal.zip"
  name "Habitable"
  desc "Your Terraform resources on a map, with HCP Terraform built in"
  homepage "https://github.com/thrashr888/homebrew-tap/releases/tag/habitable-v#{version}"

  depends_on macos: :ventura

  app "Habitable.app"
end
