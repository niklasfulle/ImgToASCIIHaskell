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

                              k k k k k k k k k k k k m ~ - - - - - - o k k k m ~ - - ~ i j k k k k k k

                              j j k k k k k k k k k j m - - - - - - - o k j j m - - - -

                              k j j j j k k k k j j j m - - - - - - - o k j j m - - - -

                      k k k j k k k k k k k k k k k k m - - - - - - - o k j j m - - - - - - - - - - - -

                      k k k j m ~ ~ - o k j j l ~ ~ ~ - - - - - - - - o k j j m - - - - - - - - - - - - -

                      k k k j m - - - o k j j m - - - - - - - - - - - o k j j m - - - - - - - - - - - - -

                      k k k j m - - - o k j j m - - - - - - - - - - - o j j j m - - - - - - - - - - - -

                      k k k j m - - - o k j j l o o o ~ - - - - - - - ~ m m m m o o o ~ - - - - - - - - - - - - -

                      k k k j m - - - o k j k k k k j m - - - - - - - - - - - o k k j m - - - - - - - - - - - - -

                      k k k j m - - - o k j k k j j j m - - - - - - - - - - - o k j j m - - - - - - - - - - - - -

                      k k k j m - - - o j j j j j j j l - - - - - - - - - - - o k j j m - - - - - - - - - - - - -

                      k k k j l o o o n m m m m m m l n - - - - - - - ~ o o o n k k j l o o o o o o o ~ ~ - - - -

                      k k k k k k k j m - - - - - - - - - - - - - - - o k k k k k k k k k k k k k k k k l - - -

                      k k k k k j j j m - - - - - - - - - - - - - - - o k j j k k k k k j j j j j j j k #

                      k k k k k k k j m - - - - - - - - - - - - - - - o j j j j j j j j j j j j k k k k j

                      k k k k k k k j m - - - - - - - - - - - - - - - o k k k k k k k k k k k k k k k k k

                      k k k k k k k & o - - - - - - - - - - - - - - - - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ j j k k

                                      - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

                                      ~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

                              k k k $ o ~ ~ ~ ~ - - - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - - - - - - - - - -

                              k k k k k k k k k l l l l k k k k k k k k k k k l - - - - - - - -

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

              ~ ~ ~ ~ ~ ~ ~ - o k j j k k k k m ~ - - o k k k k k k j m ~ - - o k k k k j k j l ~ ~ ~ ~ ~ ~ ~ ~ ~

              - - - - - - - - o k j j k k k j m - - - o k k k k k k j m - - - o k k k k j j j m - - - - - - - - -

              - - - - - - - - o j j j k k k j m - - - o k k k k k k j m - - - o k k k k j j j m - - - - - - - - -

              - - - - - - - - o k k k k k k j m ~ - - o k k k k k k j m ~ - - o k k k k k k k m - - - - - - - - -

              - - - - - - - - - ~ ~ - o k k k k l l l k k k k k k k k k l l l k k k j m ~ ~ ~ - - - - - - - - - -

              - - - - - - - - - - - - o k k k k k k k k k k k k k k k k k k k k k k j m - - - - - - - - - - - - -

              - - - - - - - - - - - - o k k k k k k k k k k k k k k k k k k k k k k j m - - - - - - - - - - - - -

              - - - - - - - - ~ o o o n k k k k k k k k k k k k k k k k k k k k k k j l o o o ~ - - - - - - - - -

              - - - - - - - - o j k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m - - - - - - - - -

              - - - - - - - - o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m - - - - - - - - -

              - - - - - - - - o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j m - - - - - - - - -

              - - - - - - - - o k k k k k k k k k k k k k k k k k k k k k k k k k k k k k k j l ~ - - - - - - - -

                - - - - - -   k k k k k k k k k k k k k k k k k k k   k k k k k k k k k k k k k i l - - - - - -

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
