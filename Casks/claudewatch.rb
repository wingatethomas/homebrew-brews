cask "claudewatch" do
  version "0.7.5"
  sha256 "7a923c2a36bba38aaea7c0b03b007ca9a0bf39c9b6886d4075129b093a090e68"

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
