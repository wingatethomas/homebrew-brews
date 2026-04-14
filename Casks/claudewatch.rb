cask "claudewatch" do
  version "0.8.2"
  sha256 "e8636dca40b47a7e0e6a592eb8b2ca9f7103a4b501353967781c4b3023c540d9"

  url "https://github.com/wingatethomas/claudewatch/releases/download/v#{version}/ClaudeWatch-v#{version}-arm64.zip"
  name "ClaudeWatch"
  desc "Menu bar app that monitors running Claude Code sessions"
  homepage "https://github.com/wingatethomas/claudewatch"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "ClaudeWatch.app"

  zap trash: [
    "~/Library/Application Support/ClaudeWatch",
    "~/Library/LaunchAgents/com.claudewatch.plist",
  ]
end
