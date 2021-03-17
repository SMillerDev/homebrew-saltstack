cask "saltstack-3001" do
  version "3001.6"
  sha256 "a78e98747a78be58c0998e8f0865d66cd1dd064335f623d57a721c70e0935741"

  url "https://repo.saltproject.io/osx/salt-#{version}-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/3001.html"
    strategy :page_match
    regex(/Latest release: (\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: ["saltstack", "saltstack-3000"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
