import SDL.Vect
import SDL.Video.Renderer
import SDL.Init
import qualified SDL
import Data.Text (pack)


main :: IO ()
main = do
  SDL.initialize [SDL.InitVideo]
  SDL.quit

  window <- SDL.createWindow (pack "Hello World!") SDL.defaultWindow
  renderer <- SDL.createRenderer window (-1) SDL.defaultRenderer

  SDL.withRenderTarget renderer $ do
    SDL.rendererDrawColor renderer SDL.$= SDL.V4 255 255 255 255
    SDL.clear renderer

    font <- SDL.createFont

  SDL.delay 3000

  -- threadDelay 1000000

  SDL.destroyRenderer renderer
  SDL.destroyWindow window

  putStrLn "Hello, World!"
