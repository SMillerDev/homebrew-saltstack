cask "saltstack" do
  # Phase 3 support until Sep 30, 2022
  version "3005"
  sha256 "255eb48d18c75797712bee2286c51d3edadcb7b77b812ecb2ca329469e7b8d3a"

  url "https://repo.saltproject.io/osx/salt-#{version}-1-py3-x86_64.pkg"
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
