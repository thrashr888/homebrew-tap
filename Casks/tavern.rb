cask "tavern" do
  version "1.0.8"
  sha256 "516f8527a292ff9471e763c410ffe40db310af77e086da93f2d0c113887bca15"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.8/Tavern-1.0.8-macos-arm64.zip"
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
