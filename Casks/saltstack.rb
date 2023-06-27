cask "saltstack" do
  version "3006.1"
  sha256 "21b3dafd8b3e2dd8e4fe7c63dcddec8faac94b953904ffd74ac1cc8f027498a1"

  url "https://repo.saltproject.io/salt/py3/macos/latest/salt-#{version}-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/salt/py3/macos/latest/"
    strategy :page_match
    regex(/salt-(\d+(?:\.\d+)*)-py3-x86_64\.pkg/i)
  end

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
