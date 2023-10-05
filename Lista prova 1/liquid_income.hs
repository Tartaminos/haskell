-- Defina uma função que recebe o salário base de um funcionário e resulta no salário líquido a
-- receber, sabendo-se que o funcionário tem gratificação de 10% sobre o salário base e paga
-- imposto de 7% sobre o salário base. Exemplos:
-- salario 1000 ~ 1030.0
-- salario 850 ~ 875.5

main :: IO ()
main = do 
    putStrLn "what's your income? "
    income <- getLine

    let baseIncome = read income :: Double
    let liquidIncome = calcLiquidIncome baseIncome

    putStrLn $ "after taxes: " ++ show liquidIncome


calcLiquidIncome :: Double -> Double
calcLiquidIncome baseIncome =
    let plus = 0.10 * baseIncome
        tax = 0.07 * baseIncome
    in baseIncome + plus - tax