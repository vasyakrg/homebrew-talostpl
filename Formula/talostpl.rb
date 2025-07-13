class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.3/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "429e20e375ee071742ab2ab520b0179d4ac743d89152cf9b018896b6bf67c1f4"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.3/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "2a159a50af386dc73ac259a8a35564d6cfc987f78defb71223c6540a6227db0c"
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
