cask "claudewatch" do
  version "0.7.2"
  sha256 "c11d77a7984a27644102f5c65a36f693de77a159c701b52524ce7412942dde44"

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
