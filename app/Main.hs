{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as B8
import           Lib
import           Web.Stripe
import           Web.Stripe.Customer
import           Data.Text             (Text)
import qualified Data.Text             as T
import Web.Stripe.Account

-- import qualified Data.Text.Encoding    as T

main :: IO ()
main = do
  let config = StripeConfig (StripeKey (toBytestring "mykey"))
  print "Test"

-- packEnv :: String -> IO B.ByteString
-- packEnv = fmap B.pack . getEnv

toBytestring :: Show a => a -> ByteString
toBytestring = B8.pack . show

toText
    :: Show a
    => a
    -> Text
toText = T.pack . show

