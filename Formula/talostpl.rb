class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.6.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.6.0/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "e36226450eadeb094d9efbf67c886341410f668d576f3a4cd4fc7b4214ff5def"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.6.0/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "8ff25149adff1e3dec81ae9986c757312bb9354d4784de5db63fe9cf47ab2d16"
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
