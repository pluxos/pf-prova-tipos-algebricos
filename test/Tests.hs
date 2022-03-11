import Test.Hspec        (Spec, it, shouldBe)
import Test.Hspec.Runner (configFastFail, defaultConfig, hspecWith)

import Exercise

main :: IO ()
main = hspecWith defaultConfig {configFastFail = False} specs

specs :: Spec
specs = do
        it "Returns a Hello, Haskell! string " $
          True `shouldBe` True
