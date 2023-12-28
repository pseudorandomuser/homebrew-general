cask "ryujinx" do

    version "1.1.1102"
    sha256 "1d00f1ab150d1ef5677bb15ea3dc6b0965791d498f4323208e19baf95ee34563"

    url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master"
    name "Ryujinx"
    desc "Nintendo Switch Emulator"
    homepage "https://ryujinx.org"

    livecheck do
      url :url
      strategy :github_latest
    end
  
    app "Ryujinx.app"

    zap trash: [
      "~/Library/Application Support/Ryujinx",
      "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
      "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
    ]

end
