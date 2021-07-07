cask "saltstack" do
  # Phase 3 support until Sep 30, 2022
  version "3003.1"
  sha256 "325c74c6f963f2f1682401ebf920a0a5bf30ead749a4c572c79d6a08f3261f18"

  url "https://repo.saltproject.io/osx/salt-#{version}-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/"
    strategy :page_match
    regex(/Latest release: (\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: ["saltstack-3001", "saltstack-3000"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
