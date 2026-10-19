cask "tavern" do
  version "1.0.3"
  sha256 "29ca72479ce7d872b145fc4ca58a2d6c80bcb9f2c97c617dd77ab5feaba71926"

  url "https://github.com/thrashr888/tavern/releases/download/v#{version}/Tavern-#{version}-macos-arm64.zip"
  name "Tavern"
  desc "Home for a party of AI agents: Pi agents, hosted members, mail and goals"
  homepage "https://github.com/thrashr888/tavern"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tavern.app"

  zap trash: [
    "~/Library/Application Support/Tavern",
    "~/Library/Preferences/dev.thrashr888.tavern.plist",
  ]
end
