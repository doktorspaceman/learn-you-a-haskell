--main = putStrLn "hello, world"

--main = do
--    putStrLn "Hello, what's your name?"
--    name <- getLine
--    putStrLn ("Hey " ++ name ++ ", you rock!")

--main = do
--    foo <- putStrLn "Hello, what's your name?"
--    name <- getLine
--    putStrLn ("Hey " ++ name ++ ", you rock!")

import Data.Char
import Control.Monad

--main = do
--    putStrLn "What's your first name?"
--    firstName <- getLine
--    putStrLn "What's your last name?"
--    lastName <- getLine
--    let bigFirstName = map toUpper firstName
--        bigLastName = map toUpper lastName
--    putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"

--main = do
--    line <- getLine
--    if null line
--        then return ()
--        else do
--            putStrLn $ reverseWords line
--            main

--reverseWords :: String -> String
--reverseWords = unwords . map reverse . words

--main = do
--    return ()
--    return "HAHAHA"
--    line <- getLine
--    return "BLAH BLAH BLAH"
--    return 4
--    putStrLn line

--main = do
--    let a = "hell"
--        b = "yeah"
--    putStrLn $ a ++ " " ++ b

--main = do   putStr "Hey, "
--            putStr "I'm "
--            putStrLn "Andy!"

--main = do   print True
--            print 2
--            print "haha"
--            print 3.2
--            print [3,4,3]

--main = do
--    c <- getChar
--    if c /= ' '
--        then do
--            putChar c
--            main

--        else return ()

--main = do
--    c <- getChar
--    when (c /= ' ') $ do
--        putChar c
--        main

--main = do
--    rs <- sequence [getLine, getLine, getLine]
--    print rs

--main = do
--    colors <- forM [1,2,3,4] (\a -> do
--        putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
--        color <- getLine
--        return color)
--    putStrLn "The colors that you associate with 1, 2, 3, and 4 are: "
--    mapM putStrLn colors

--main = do --forever $ do
--    --putStr "Give me some input: "
--    --l <- getLine
--    --putStrLn $ map toUpper l
--    contents <- getContents
--    --putStr (map toUpper contents)
--    putStr (shortLinesOnly contents)

--main = interact shortLinesOnly

--shortLinesOnly :: String -> String
--shortLinesOnly input =
--    let allLines = lines input
--        shortLines = filter (\line -> length line < 10) allLines
--        result = unlines shortLines
--    in  result

--main = interact $ unlines . filter ((<10) . length) . lines

--respondPalindromes = unlines . map (\xs -> if isPalindrome xs then "palindrome" else "not a palindrome") . lines
--    where            isPalindrome xs = xs == reverse xs

--main = interact respondPalindromes

import System.IO

--main = do
--    handle <- openFile "girlfriend.txt" ReadMode
--    contents <- hGetContents handle
--    putStr contents
--    hClose handle

--main = do
--    --withFile "girlfriend.txt" ReadMode (\handle -> do
--    --    contents <- hGetContents handle
--    --    putStr contents)
--    contents <- readFile "girlfriend.txt"
--    putStr contents

withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile' path mode f = do
    handle <- openFile path mode
    result <- f handle
    hClose handle
    return result

--main = do
--    contents <- readFile "girlfriend.txt"
--    writeFile "girlfriendcaps.txt" (map toUpper contents)

main = do
    todoItem <- getLine
    appendFile "todo.txt" (todoItem ++ "\n")

----checkpoint: "end of each line because getLine doesn't give us a newline character at the end"











