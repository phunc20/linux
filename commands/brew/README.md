Homebrew is a package manager for MasOS. Here we introduce a few basic cmd commands of Homebrew.

- `brew install <package_name>`
- `brew doctor`
- `brew info <package_name>`
  - similar/related commands include
  - `brew list --version libomp`
  - `brew switch --version libomp`
- How to downgrade a package, download and build from source? E.g. [`libomp==11.1.0`](https://github.com/dmlc/xgboost/issues/7039)
  01. `curl -OL https://raw.githubusercontent.com/chenrui333/homebrew-core/0094d1513ce9e2e85e07443b8b5930ad298aad91/Formula/libomp.rb` to download the `.rb` file
  02. `brew unlink libomp` to unlink the existing package
  03. `brew install --build-from-source ./libomp.rb`
  04. Lastly, double-check with `brew list libomp`
		




