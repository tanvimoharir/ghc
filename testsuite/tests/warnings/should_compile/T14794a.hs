{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ExplicitNamespaces #-}
{-# OPTIONS_GHC -Wmissing-signatures #-}

module T14794a (testExported, data TestExported) where

-- These should generate warnings:

testExported = True

testUnexported = True

-- These should not generate warnings:

pattern TestExported <- True

pattern TestUnexported <- True
