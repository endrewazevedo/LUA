tabuleiro = { }

--Area das funções---------------------

function preenche_tabuleiro(t) -- Essa função irá preencher o tabuleiro com valor 0, para comparações futuras
    for i = 1, 3 do
        t[i] = {}
        for j = 1, 3 do
            t[i][j] = 0
        end
    end
end

function exibe_tabuleiro(t) -- Essa função irá percorrer a table e exibirá o tabuleiro
    for i = 1, 3 do
        for j = 1, 3 do
            if(t[i][j] == 1) then
                io.write("|O|")
            elseif(t[i][j] == -1) then  
                io.write("|X|")
            else 
                io.write("| |")
            end
        end
        print("\n")
    end
end

function jogada_O(t) -- Essa função adiciona a jodada do Jogador de O
    repeat
        local jogada_valida = 0 
        repeat 
            print("Vez de O\nDigite o valor da linha")
            linha = io.read("*n")
            if(linha > 3) then
                print("Jogada invalida")
                jogada_valida = 1
            else
                jogada_valida = 0
            end
        until jogada_valida == 0

        repeat
            print("Digite o valor da coluna")
            coluna = io.read("*n")
            if(coluna > 3) then
                print("Jogada invalida")
                jogada_valida = 1
            else
                jogada_valida = 0
            end
        until jogada_valida == 0

        if(t[linha][coluna] ~= 0) then
            print("Jogada invalida")
            jogada_valida = 1
        else
            t[linha][coluna] = 1
            jogada_valida = 0
        end
    until jogada_valida == 0
end

function jogada_X(t) ---- Essa função adiciona a jodada do Jogador de X
    repeat
        local jogada_valida = 0 
        repeat 
            print("Vez de X\nDigite o valor da linha")
            linha = io.read("*n")
            if(linha > 3) then
                print("Jogada invalida")
                jogada_valida = 1
            else
                jogada_valida = 0
            end
        until jogada_valida == 0

        repeat
            print("Digite o valor da coluna")
            coluna = io.read("*n")
            if(coluna > 3) then
                print("Jogada invalida")
                jogada_valida = 1
            else
                jogada_valida = 0
            end
        until jogada_valida == 0

        if(t[linha][coluna] ~= 0) then
            print("Jogada invalida")
            jogada_valida = 1
        else
            t[linha][coluna] = -1
            jogada_valida = 0
        end
    until jogada_valida == 0
end

function ganhou_linha(t) -- Essa função verifica se algum jogador ganhou completando a linha
    for i = 1, 3 do
        if(t[i][1] + t[i][2] + t[i][3] == 3) then
            print("O jogador de O ganhou pela linha")
            ganhou = false
        elseif(t[i][1] + t[i][2] + t[i][3] == -3) then
            print("O jogador de X ganhou pela linha")
            ganhou = false
        end
    end
end

function ganhou_coluna(t) -- Essa função verifica se algum jogador ganhou completando a coluna
    for i = 1, 3 do
        if(t[1][i] + t[2][i] + t[3][i] == 3) then
            print("O jogador de O ganhou pela coluna")
            ganhou = false
        elseif(t[1][i] + t[2][i] + t[3][i] == -3) then
            print("O jogador de X ganhou pela coluna")
            ganhou = false
        end
    end
end

function ganhou_diagonal(t) -- Essa função verifica se algum jogador ganhou completando a diagonal
    if( (t[1][1]+t[2][2]+t[3][3]) == 3 or (t[1][3]+t[2][2]+t[3][1]) == 3 ) then
        print("O jogador de O ganhou pela diagonal")
        ganhou = false
    elseif(t[1][1] + t[2][2] + t[3][3] == -3 or t[1][3] + t[2][2] + t[3][1] == -3 ) then
        print("O jogador de X ganhou pela diagonal")
        ganhou = false
    end
end

function velhou(t)
    local velhou = 0
    for i = 1, 3 do
        for j = 1, 3 do
            if(t[i][j] == 1 or t[i][j] == -1) then
                velhou = velhou+1
            end
        end
    end
    if(velhou == 9) then
        print("O jogo velhou")
        ganhou = false
    end
end

-- Fim da área de funções ---------


print("Bem vindo jogadores, vamos comecar a nossa partida!\n\n")
jogadas = 0 --Indica de quem é a vez, se for par vez de X, se for impar vez de O
linha = 0
coluna = 0
ganhou = true
preenche_tabuleiro(tabuleiro)

repeat
    if(jogadas % 2 == 0) then
        jogada_X(tabuleiro)
        jogadas = jogadas+1
    elseif(jogadas % 2 ~= 0) then
        jogada_O(tabuleiro)
        jogadas = jogadas+1
    end
    exibe_tabuleiro(tabuleiro)
    ganhou_linha(tabuleiro)
    ganhou_coluna(tabuleiro)
    ganhou_diagonal(tabuleiro)
    velhou(tabuleiro)
until ganhou == false





