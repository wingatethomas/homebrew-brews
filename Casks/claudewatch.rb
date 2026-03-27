cask "claudewatch" do
  version "0.7.6"
  sha256 "bf011be057d193c2940dd602e73f5392e6965f773b3854177f79d79b2cdb69b8"

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
