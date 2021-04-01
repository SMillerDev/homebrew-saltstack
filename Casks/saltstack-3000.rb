# Phase 3 upport until Aug 31, 2021
cask "saltstack-3000" do
  version "3000.9"
  sha256 "f45dd0e4b818417f53869dd62c3d3e6872c16d7b303359fd330d671ecb5e951d"

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
