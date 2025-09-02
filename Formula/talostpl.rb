class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.6"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.6/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "10f42a9b0b9d640163b5453cd2b208dea06bde0a99fff7bcc1240f0e70f3bd73"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.6/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "9bc9d1dea7b0688ed8c060bd3a03ca92657a68338a8746429252d7f14e69a194"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
