class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.4.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.3/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "31f6d596b37397ad3d8ec39c8560997fa99b35a8675e70b82ec0f67c08918f4f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.4.3/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "8d7a17e6ef2caab1be4f34e752b97bda6fe735dacb1aa98a6198ceede9ee19da"
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
