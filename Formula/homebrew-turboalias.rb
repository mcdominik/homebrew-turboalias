class HomebrewTurboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/mcdominik/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.1.tar.gz"
  sha256 "8b5a5dd251f96ab5b6dfc7930660bcdfa5ad0dd6a3efd0c6b29e61c2fe075db0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end