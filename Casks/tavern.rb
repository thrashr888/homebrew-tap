cask "tavern" do
  version "1.0.1"
  sha256 "842bffa8a2051d5dd82a9e8044ec8d960e471422b0bef5824ec5e12822b160b6"

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
