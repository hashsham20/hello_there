# Hello There App

A simple Flutter app that displays the text "Hello there" in the center of the screen. When the user taps anywhere on the screen, the background color changes to a randomly generated color.

## Bonus Feature: Display RGB Values

This app also displays the RGB values of the current background color below the "Hello there" text. Each time the background color changes, the RGB values are updated accordingly.

## Badge indiicating use of Solid Lints

[![style: solid](https://img.shields.io/badge/style-solid-orange)](https://pub.dev/packages/solid_lints)

## Changes adhering to the DRY Principle

Combined the MyHomePagePublic and MyHomePageState classes into a single StatefulWidget.
Used an anonymous function for the onTap event to directly update the state
