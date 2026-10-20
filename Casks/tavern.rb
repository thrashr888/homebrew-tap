cask "tavern" do
  version "1.0.7"
  sha256 "701171761af46f37ab0aa76fd2ced6b54e8d55053c72974fd7c52807280af846"

  url "https://github.com/thrashr888/tavern/releases/download/v1.0.7/Tavern-1.0.7-macos-arm64.zip"
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
