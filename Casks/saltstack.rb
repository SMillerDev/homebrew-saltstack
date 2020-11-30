cask "saltstack" do
  version "3002.2"
  sha256 "874E1BB154B5AB420C900E982271048E12A070D93EAFE5B17ABC58EFD93517D4"

  url "https://repo.saltstack.com/osx/salt-3002.2-py3-x86_64.pkg"
  name "saltstack"
  desc "Dynamic infrastructure communication bus"
  homepage "https://s.saltstack.com/community/"

  conflicts_with cask: ["saltstack@3001", "saltstack@3000"]

  pkg "salt-#{version}-py3-x86_64.pkg"

  uninstall pkgutil: "com.saltstack.salt"
end
