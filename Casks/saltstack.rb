cask "saltstack" do
  # Phase 3 support until Sep 30, 2022
  version "3004.2"
  sha256 "bc2c32afadde90780ed81353e0572b1b6eb04637987c327cecaf32c37ad9639f"

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
