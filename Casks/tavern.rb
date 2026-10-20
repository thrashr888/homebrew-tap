cask "tavern" do
  version "1.0.4"
  sha256 "b5f870dc20819c4ca621427d182cba8158b0a686d5baf2519d1ca166d7ec3ebb"

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
