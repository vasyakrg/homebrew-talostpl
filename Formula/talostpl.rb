class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.6.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.6.1/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "00f90bc5ebd73af15274a1819b0f148162a05d39b739041198b4f5685caa4e71"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.6.1/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "884bd4ae7223625454359b9198eee1e5e6df32241a81179b27ed2f276dea6823"
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
