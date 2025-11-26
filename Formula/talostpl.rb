class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.2.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.2/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "0f694e00c8aba108035029400acc540654370954baec8da3f41e4d9698d4d1ac"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.2.2/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "336db1d76913427deeee1066264db6a1a5af4ab31dbd4d66934845a674ecbb30"
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
