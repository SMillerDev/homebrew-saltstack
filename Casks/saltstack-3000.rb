cask "saltstack-3000" do
  version "3000.8"
  sha256 "3266115829034ba968b3aa63f5bb88a31f0bc2efb578eb362a8be5c5de4c1c32"

  url "https://repo.saltproject.io/osx/salt-#{version}-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/3000.html"
    strategy :page_match
    regex(/Latest release: (\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: ["saltstack", "saltstack-3001"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
