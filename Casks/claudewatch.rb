cask "claudewatch" do
  version "0.7.3"
  sha256 "3f6f512e8bb17c8e85f09379a009fb8f043dcd58965ed097cf74e4d42538680a"

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
