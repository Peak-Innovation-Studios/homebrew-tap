cask "gpg-manager" do
  version "1.0.2"
  sha256 "cc404aac20c2fbb8a4cd2a6390b8f06d4f056dd5dc337873a4e61f3bf579bc8f"

  url "https://github.com/Peak-Innovation-Studios/GPGManager/releases/download/v#{version}/GPGManager-#{version}.dmg"
  name "GPG Manager"
  desc "Modern macOS GUI for managing GPG keys, gpg-agent, and Git signing"
  homepage "https://github.com/Peak-Innovation-Studios/GPGManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "GPGManager.app"

  zap trash: [
    "~/Library/Preferences/com.peakinnovationstudios.GPGManager.plist",
    "~/Library/Application Support/GPGManager",
    "~/Library/Caches/com.peakinnovationstudios.GPGManager",
  ]
end
