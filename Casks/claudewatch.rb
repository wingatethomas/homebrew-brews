cask "claudewatch" do
  version "0.7.7"
  sha256 "74e9e4f2e85b4a331c40dcc44794ce6bc603985b3793072619bb1343579df680"

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
