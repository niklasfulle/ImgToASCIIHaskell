module Main where

import Codec.Picture as P
import Data.ByteString as Bs
import Data.ByteString.Char8 as Bc
import System.FilePath as Fp

{-|
  Das ist der Initialisierte Pfad des Bildes.
  (Zu Debugzwecken schon initialisiert)
-}
imgPath :: FilePath
imgPath = "land.jpg"

{-|
  Die Farbauswahl, aus der Konvertiert werden soll.
  r, g, b und bw für grayscale
-}
colorpick :: String
colorpick = "bw"

{-|
  Nimmt Int-Wert an und gibt den dazugehörigen Char als String zurück.
-}
intMappedToChar :: Int -> String
intMappedToChar grayValue
              | grayValue == 0 = " "
              | grayValue >= 1 && grayValue < 30 = "@"
              | grayValue >= 30 && grayValue < 40 = "#"
              | grayValue >= 40 && grayValue < 50 = "&"
              | grayValue >= 50 && grayValue < 60 = "%"
              | grayValue >= 60 && grayValue < 70 = "$"
              | grayValue >= 70 && grayValue < 80 = "h"
              | grayValue >= 80 && grayValue < 90 = "i"
              | grayValue >= 90 && grayValue < 100 = "j"
              | grayValue >= 100 && grayValue < 110 = "k"
              | grayValue >= 110 && grayValue < 120 = "l"
              | grayValue >= 120 && grayValue < 130 = "m"
              | grayValue >= 130 && grayValue < 140 = "n"
              | grayValue >= 140 && grayValue < 150 = "o"
              | grayValue >= 150 && grayValue < 160 = "~"
              | grayValue >= 160 && grayValue < 170 = "-"
              | grayValue >= 170 && grayValue < 180 = "_"
              | grayValue >= 180 && grayValue < 190 = ","
              | grayValue >= 190 && grayValue < 200 = "."
              | grayValue >= 200 && grayValue < 210 = "'"
              | grayValue >= 210 = " "
              | otherwise = ""


{-|
  Prüft, ob ein Bild gerade oder ungerade ist.
  Wenn gerade, dann gibt er zwei zurück, bei ungerade 1
-}
borderCheck :: Int -> Int
borderCheck width = if (even width) then 2 else 1

{-|
  Wandelt ein Image in einen ByteString um und gibt ihn aus und schreibt in eine
  Textdatei.
  img - Image
  list - Tupelliste mit Pixelkoordinaten
  width - Breite des Bildes
  str - Der Ausgabestring
-}
convertToString :: Image PixelRGB8 -> [(Int, Int)] -> Int -> Bs.ByteString -> IO ()
convertToString img list width str = do
    if Prelude.null list
        then do
            Bc.putStrLn str
            Bc.writeFile "output.txt" str
        else do
            let first = (Prelude.head list)
            let x = (fst first)
            let y = (snd first)
            let grayValue = getPixelColorValue (pixelAt img x y)
            let restList = Prelude.tail list
            let grayValueChar = intMappedToChar grayValue
            let grayByteString = Bc.pack grayValueChar

            if x >= width-(borderCheck width)
                then do (convertToString img restList width (Bc.append str (Bc.append grayByteString (Bc.pack "\n"))))
                else do (convertToString img restList width (Bc.append str (Bc.append grayByteString (Bc.pack " "))))



{-|
  Wandelt ein Pixel8-Wert in ein Int um.
-}
pixel8ToInt :: Pixel8 -> Int
pixel8ToInt pxl8 = fromIntegral pxl8

{-|
  Gibt die Pixelwerte anhand der Auswahl des Nutzers aus.
  "r" - Gibt nur die roten RGB-Werte wieder.
  "g" - Gibt nur die grün RGB-Werte wieder.
  "b" - Gibt nur die blau RGB-Werte wieder.
  "bw" - Gibt nur die grayscale RGB-Werte wieder.
-}
getPixelColorValue :: PixelRGB8 -> Int
getPixelColorValue (PixelRGB8 r g b) = do
    case colorpick of
        "r"    -> pixel8ToInt r
        "g" -> pixel8ToInt g
        "b" -> pixel8ToInt b
        "bw" -> ((pixel8ToInt r)+(pixel8ToInt g)+(pixel8ToInt b)) `div` 3
        otherwise  -> 0

{-|
  Gibt eine Liste von Koordinaten, anhand der größe des Images wieder.
  (Bei einer Breite von über 400 wird jeder zweite Pixel übersprungen)
-}
getCoordList :: Int -> Int -> [(Int, Int)]
getCoordList width height = do
    if width >= 400
        then [(x, y) | y <- [0,2..height-1], x <- [0,2..width-1]]
        else [(x, y) | y <- [0..height-1], x <- [0..width-1]]


{-|
  Main-Methode.
  Einlesen des Bildes,
  Einlesen der Farbwerte
-}
main :: IO ()
main = do
    Prelude.putStrLn "Dateiname? (png, jpg, bmp)"
    imgPath <- Prelude.getLine
    Prelude.putStrLn "Welche Farbe? (rot (r), gruen (g), blau (b), grayscale (bw) )"
    colorpick <- Prelude.getLine

    image <- P.readImage imgPath

    case image of
        Left  err -> Prelude.putStrLn "Datei existiert nicht oder ist kein Bild"
        Right img -> do
            let converted = P.convertRGB8 img
            let width = (P.imageWidth converted)
            let height = (P.imageHeight converted)
            let list = (getCoordList width height)
            convertToString converted list width (Bc.pack "")