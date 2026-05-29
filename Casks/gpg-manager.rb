cask "gpg-manager" do
  version "1.0.0"
  sha256 "4dbdf3f218a2c5fe4239ebf127ab0912a56264ba74bff2b2e84663153f0163e7"

  url "https://github.com/Peak-Innovation-Studios/GPGManager/releases/download/v#{version}/GPGManager-#{version}.zip"
  name "GPG Manager"
  desc "Modern macOS GUI for managing GPG keys, gpg-agent, and Git signing"
  homepage "https://github.com/Peak-Innovation-Studios/GPGManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "GPGManager.app"

  zap trash: [
    "~/Library/Preferences/com.peakinnovationstudios.GPGManager.plist",
    "~/Library/Application Support/GPGManager",
    "~/Library/Caches/com.peakinnovationstudios.GPGManager",
  ]
end
