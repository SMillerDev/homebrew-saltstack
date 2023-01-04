cask "saltstack" do
  version "3005.1"
  sha256 "6f0a8997fb6c3e257cdc3394e4bacc97fe5b30893ef85224ed93df3cbf094ae9"

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
