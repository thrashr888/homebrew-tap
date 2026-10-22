cask "tavern" do
  version "1.0.11"
  sha256 "d9e22b806f5aeba314e6f434062c440f3adea98706bc2c909600c6b1b1a06fc7"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.11/Tavern-1.0.11-macos-arm64.zip"
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
