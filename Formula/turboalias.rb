class Turboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/mcdominik/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.2.tar.gz"
  sha256 "cc27b80b6250fd2d1e548a1f9e491ff5656c6db0a85585bf2cc326ae457dee0c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end