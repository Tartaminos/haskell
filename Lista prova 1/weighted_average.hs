-- A nota final de um estudante é calculada a partir de três notas atribuídas respectivamente a
-- um trabalho de laboratório, a uma avaliação semestral e a um exame final. A média
-- ponderada das três notas mencionadas obedece aos pesos a seguir:
-- nota          | peso
-- trabalho lab  | 2
-- Av. semestre  | 3
-- exame final   | 5

-- Faça uma função que recebe as três notas, calcula a média ponderada e exibe o conceito
-- obtido pelo aluno conforme a tabela abaixo.
-- média ponderada | conceito
-- 8 - 10          | A
-- 7 - 8           | B
-- 6 - 7           | C
-- 5 - 6           | D
-- 0 - 5           | E

main :: IO ()
main = do 
    putStrLn "lab work: "
    note_one <- getLine

    putStrLn "test: "
    note_two <- getLine

    putStrLn "final test: "
    note_three <- getLine

    let lab_note = read note_one :: Double
    let test_note = read note_two :: Double
    let final_test = read note_three :: Double
    let weighted_average = calcWeightedAverage lab_note test_note final_test

    putStrLn $ "average: " ++ show weighted_average


calcWeightedAverage :: Double -> Double -> Double -> String
calcWeightedAverage lab_note test_note final_test =
    let calculated_average =
            (lab_note * 2 + test_note * 3 + final_test * 5) / (2 + 3 + 5)
    in
        case calculated_average of
            x | x >= 8 -> "A"
            x | x >= 7 -> "B"
            x | x >= 6 -> "C"
            x | x >= 5 -> "D"
            _ -> "E"
