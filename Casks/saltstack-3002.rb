# Phase 3 upport until Apr 21, 2022
cask "saltstack-3002" do
  version "3002.6"
  sha256 "8aaf7f0fc14748820bbe34d938baa9283d38a2b6b62ba9cd22fd96142d8d67fd"

  url "https://repo.saltproject.io/osx/salt-#{version}-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/3002.html"
    strategy :page_match
    regex(/Latest release: (\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: ["saltstack-3001", "saltstack-3000"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
