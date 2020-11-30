cask "saltstack@3001" do
  version "3001.2"
  sha256 "ecd188839ff471db3ecd3d333b3ef116a9463437bbfe58e6c20914e1a2e57762"

  url "https://repo.saltstack.com/osx/salt-3001.2-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://s.saltstack.com/community/"

  conflicts_with cask: ["saltstack@3002", "saltstack@3000"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
