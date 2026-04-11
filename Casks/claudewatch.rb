cask "claudewatch" do
  version "0.8.0"
  sha256 "b633b1c9d371a05562a5d0f6b1c5d83b000c984d552c0d088f7e1eb22a721639"

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
