cask "claudewatch" do
  version "0.7.4"
  sha256 "52f50615f785e9764e45e6170496a9d497ab558f460b69dc216816fa2db929d9"

  url "https://github.com/wingatethomas/claudewatch/releases/download/v#{version}/ClaudeWatch-v#{version}-arm64.zip"
  name "ClaudeWatch"
  desc "Menu bar app that monitors running Claude Code sessions"
  homepage "https://github.com/wingatethomas/claudewatch"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "ClaudeWatch.app"

  zap trash: [
    "~/Library/Preferences/com.claudewatch.plist",
    "~/.claudewatch",
  ]
end
