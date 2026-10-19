cask "tavern" do
  version "1.0.0"
  sha256 "ddd14c0b8528ac8e5bcdb177350c63fee71f745bf549a53503059e58168cda1f"

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
