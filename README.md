# `download`

Function to download files via URL using `aria2c`.

## Usage

```bash
download <URL> <CONNECTIONS:16>
```

E.g.:

```bash
download "https://github.com/aubreypwd/zsh-plugin-download/archive/master.zip"
```

Will download the `master.zip` file to your current working directory with `aria2c`. If you supply CONNECTIONS, e.g:

```bash
download "https://github.com/aubreypwd/zsh-plugin-download/archive/master.zip" 12
```

...it will download that file using `12` connections. The default connections is `16`.

## Requires

- `aria2c`<sup>*</sup>

If you have https://github.com/aubreypwd/zsh-plugin-require and homebrew installed, we'll handle installing dependancies automatically.

## Install

Using [antigen](https://github.com/zsh-users/antigen):

```bash
antigen bundle aubreypwd/zsh-plugin-download@1.0.0
```

## Development

Install the package on `master`:

```bash
antigen bundle ssh://git@github.com/aubreypwd/zsh-plugin-download
```

...and contribute upstream by working in `$HOME/.antigen/bundles/aubreypwd/zsh-plugin-download`.

---

## Changelog

Changelog beyond these were moved to Github Releases.

### 1.0.1

- Do not open via `open` when done
- Requirement command tests are now in function call

### 1.0.0

- First version
