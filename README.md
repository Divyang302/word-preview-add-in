# MorasalaTec Word Add-in: release files

This repository hosts the **published installer** for the MorasalaTec Word add-in. It adds a **Save In MorasalaTec** button to Word's Home tab that uploads the open document to MorasalaTec.

## Installing

Go to the install page and follow the steps there:

**https://divyang302.github.io/word-preview-add-in/**

In short: uninstall any older *MorasalaTec Add In*, download and extract `WordAddIn.zip`, close Word, run `Install.bat`, and accept the administrator prompt. Installed copies update themselves automatically.

## For maintainers

- **Everything here is generated.** Releases are produced by `publish.ps1` in the private source repository (`Divyang302/word-preview-add-in-source`). Its README describes the full release process.
- **Do not edit `*.vsto`, `*.dll.manifest` or `*.deploy` files by hand.** They are signed and hash-checked, so any change breaks installation. Publish a new version instead.
- **A push to `main` is a live release.** GitHub Pages serves this branch, and `setup.exe` and installed copies download from it.
- Keep `.gitattributes` as it is. It stops Git from changing line endings in the signed files.
- Keep the old `Application Files/WordPreviewAddIn_*` folders. Only the newest is used, but they record each release.

| File | Purpose |
|---|---|
| `index.html` | Install page (served by GitHub Pages) |
| `WordAddIn.zip` | Download package containing the files below |
| `Install.bat`, `Install-AddIn.ps1` | Trust the publisher certificate, then run `setup.exe` |
| `setup.exe` | ClickOnce installer |
| `WordPreviewAddIn.vsto` | Deployment manifest pointing to the current version |
| `word-add-in-certificate.cer` | Public certificate of the publisher (`CN=MorasalaTec`) |
| `Application Files/` | One folder per published version |
