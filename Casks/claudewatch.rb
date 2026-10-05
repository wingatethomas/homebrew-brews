cask "claudewatch" do
  version "0.10.0"
  sha256 "1eba944af85fc929dfe5d5db77f18f31f21a8ee3afe1ff74dafd1dcb16f2133a"

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
