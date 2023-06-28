# Img to ASCII Converter Haskell

## Overview

-   [Description](#description)
-   [Build Dependencies](#build-dependencies)
-   [Build](#build)
-   [Example](#example)

## Description

The program converts an image to ASCII art. The image is first converted to grayscale and then to ASCII characters. The ASCII characters are chosen based on the brightness of the pixels. The program uses the [JuicyPixels](https://hackage.haskell.org/package/JuicyPixels) library to read the image. The program was build for a university project.

## Build Dependencies

| Name        | Version   | Link                                            |
| ----------- | --------- | ----------------------------------------------- |
| cabal       | 2.4       | https://www.haskell.org/cabal/                  |
| JuicyPixels | 3.3.8     | https://hackage.haskell.org/package/JuicyPixels |
| filepath    | 1.4.100.3 | https://hackage.haskell.org/package/filepath    |
| bytestring  | 0.11.4.0  | https://hackage.haskell.org/package/bytestring  |

## Build

You need to have [cabal](https://www.haskell.org/cabal/) installed to build the program.
To build the program run the following command in the root directory of the project:

```bash
cabal run ImgToASCIIHaskell
```

The converted image will be saved in the root directory of the project as `output.txt`.

## Example

![mario_small](images/mario.png)

```
                        k k k k k k k k k k k k k k k k k k k k k k
                        k k k k k k k k k k k k k k k k k k k k k k
                        k k k k k k k k k k k k k k k k k k k k k
                k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k
                k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k
                k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k
                k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k
                k k k k k k k k k k k k k l l l l l l l k k k k k l l l k k k k k k k k k k
                k k k k k k k k k k k k m p ~ ~ ~ ~ ~ ~ o k k k m p ~ ~ p i j k k k k k k
                j j k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~
                k j j j j k k k k j j j m ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~
        k k k j k k k k k k k k k k k k m ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m p p ~ o k j j l p p p ~ ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o j j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o k j j l o o o p ~ ~ ~ ~ ~ ~ ~ p m m m m o o o p ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o k j k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o k j k k j j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j m ~ ~ ~ o j j j j j j j l ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
        k k k j l o o o n m m m m m m l n ~ ~ ~ ~ ~ ~ ~ p o o o n k k j l o o o o o o o p p ~ ~ ~ ~
        k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k l ~ ~ ~
        k k k k k j j j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k j j k k k k k j j j j j j j k #
        k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o j j j j j j j j j j j j k k k k j
        k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k
        k k k k k k k & o ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ p p p p p p p p p p p p j j k k
                        ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
                        p ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
                k k k $ o p p p p ~ ~ ~ p p p p p p p p p p p p ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
                k k k k k k k k k l l l l k k k k k k k k k k k l ~ ~ ~ ~ ~ ~ ~ ~
                k k k k k j j j k j j j k j j j j j j j j j j j k
                k k k k k k k j k k k k k j j k k k k k j j j j j
        k k k k k k k k k k k j k k k k k j j k k k k j k k k k k j j k k k k k k k k k k k
        k k k k k k k k k k k j k k k k k j j k k k k j k k k k k j k k k k k k k k k k k k
        k k k k k k k k k k k j k k k k k j j k k k k j k k k k k j j k k k k k k k k k k k
        k k k k k k k k k k k j k k k k k j j j j j j j k k k k k j j k k k k k k k k k k
k k k k k k k k k k k k k k k j k k k k k k k k k k k k k k k k k j j k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k j k k k k k k k k k k k k k k k k k j j k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k j k k k k k k k k k k k k k k k k k j j k k k k k k k k k k k k k k k
j j j j j j j j j k k k k k k j k j j k k k k k k k k k k k k j k j j k j k k k k j j j j j j j j j
k k k k k k k k k k k k k k k k k k l l k k k k k k k k k l l l k k k k k k k k k k k k k k k k k k
p p p p p p p ~ o k j j k k k k m p ~ ~ o k k k k k k j m p ~ ~ o k k k k j k j l p p p p p p p p p
~ ~ ~ ~ ~ ~ ~ ~ o k j j k k k j m ~ ~ ~ o k k k k k k j m ~ ~ ~ o k k k k j j j m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o j j j k k k j m ~ ~ ~ o k k k k k k j m ~ ~ ~ o k k k k j j j m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k j m p ~ ~ o k k k k k k j m p ~ ~ o k k k k k k k m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ ~ p p ~ o k k k k l l l k k k k k k k k k l l l k k k j m p p p ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ p o o o n k k k k k k k k k k k k k k k k k k k k k k j l o o o p ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o j k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m ~ ~ ~ ~ ~ ~ ~ ~ ~
~ ~ ~ ~ ~ ~ ~ ~ o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j l p ~ ~ ~ ~ ~ ~ ~ ~
  ~ ~ ~ ~ ~ ~   k k k k k k k k k k k k k k k k k k k   k k k k k k k k k k k k k i l ~ ~ ~ ~ ~ ~
                k k k k k k k k k k k k k k             k k k k k k k k k k k k k h
                k k k k k k k k k k k k k k             k k k k k k k k k k k k k
        k k k i k k k k k k k k k k k k k k             k k k k k k k k k k k k k j j k k
        k k k k k k k k k k k k k j j k k               k k k i k k k k k k k k k k k k k k
        k k k k k k k k k k k k j                               j j k k k k k k j k k k k k
        k k k k k k k k k k k k k j                             k k k k k k k k k k k k k
k k k k k k k k k k k k k k k k k k                             k k k k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k k k k                             k k k k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k k k k                             k k k k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k k k k                             k k k k k k k k k k k k k k k k k k
k k k k k k k k k k k k k k k k k k                             k k k k k k k k k k k k k k k k k k
```
