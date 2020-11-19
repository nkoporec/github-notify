# GitHub Notify

> Simple tray application for getting GitHub notifications

![Build Status](https://github.com/koltyakov/github-notify/workflows/Build/badge.svg?branch=master)
[![Go Report Card](https://goreportcard.com/badge/github.com/koltyakov/github-notify)](https://goreportcard.com/report/github.com/koltyakov/github-notify)
[![License](https://img.shields.io/github/license/koltyakov/github-notify.svg)](https://github.com/koltyakov/github-notify/blob/master/LICENSE)

| | |
|-|-|
| macOS | ![systray_macOS](./assets/systray_macOS.png) |
| Windows | ![systray_Windows](./assets/systray_Windows.png) |
| Linux | ![systray_Linux](./assets/systray_Linux.png) |

**Scenario**

- I'm a maintainer or active watcher of some repositories at GitHub
- I want to react to issues quickly
- I prefer a status based humble info rather than agressive email or pop-ups

## Demo

![demo](./assets/demo.gif)

## Install

```bash
go get github.com/koltyakov/github-notify
```

## Config

- Generate [GitHub access token](https://github.com/settings/tokens) (better select only Notifications access).
- Provive the token in settings form.

![settings](./assets/settings.png)

## Run

### macOS/Linux run

```bash
nohup github-notify >/dev/null 2>&1 &
```

or, in a sources folder,

```bash
make start
```

### Windows

Run `github-notify.exe`.

## App bundle, macOS

```bash
make bundle-darwin
```

As a result, the `GitHub Notify.app` should be found in `./bin/darwin`

## Build

### Prerequisites

The project uses these major dependencies and inherits their prerequisites:
- [systray](https://github.com/getlantern/systray)
- [Lorca](https://github.com/zserge/lorca)

### Build command

```bash
make build
```