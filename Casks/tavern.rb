cask "tavern" do
  version "1.0.2"
  sha256 "6e56e29a4ed0e4387b9f851b190376a6f8a2602147181b4f4f1398203ce98b99"

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
