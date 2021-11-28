{-# LANGUAGE CPP #-}

module Main where

#ifdef ghcjs_HOST_OS
import Distribution.Simple (defaultMain)

main :: IO ()
main = defaultMain
#else
import Distribution.Extra.Doctest (defaultMainWithDoctests)

main :: IO ()
main = defaultMainWithDoctests "doctests"
#endif
