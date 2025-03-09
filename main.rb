class ADF
  def initialize(cadeia)
    @cadeia = cadeia
    @indice = 0
    @max = cadeia.size
    @frase = ""
  end

  # pega apenas um caracter
  def proximo
    if @indice == @max
      ""
    else
      @cadeia[@indice]
    end
  end

  def iniciar
    estado = "q0"

    puts "Máquina iniciou no estado: " + estado

    loop do
      case [proximo, estado]
      ## OPCOES PARA Q0
      in [".", "q0"]
        estado = "q1"
      in [" ", "q0"]
        estado = "q0"
      in ["-", "q0"]
        estado = "q24"
      in ["/", "q0"]
        @frase += " "
        estado = "q0"
      in ["", "q0"]
        puts @frase
        break
        ## OPCOES PARA Q1
      in [" ", "q1"]
        @frase += "E"
        estado = "q0"
      in [".", "q1"]
        estado = "q2"
      in ["-", "q1"]
        estado = "q7"
        ## OPCOES PARA Q2
      in [" ", "q2"]
        @frase += "I"
        estado = "q0"
      in [".", "q2"]
        estado = "q3"
      in ["-", "q2"]
        estado = "q8"
        ## OPCOES PARA Q3
      in [" ", "q3"]
        @frase += "S"
        estado = "q0"
      in [".", "q3"]
        estado = "q4"
      in ["-", "q3"]
        estado = "q10"
        ## OPCOES PARA Q4
      in [" ", "q4"]
        @frase += "H"
        estado = "q0"
      in [".", "q4"]
        estado = "q5"
      in ["-", "q4"]
        estado = "q11"
        ## OPCOES PARA Q5
      in [" ", "q5"]
        @frase += "5"
        estado = "q0"
        ## OPCOES PARA Q7
      in [" ", "q7"]
        @frase += "A"
        estado = "q0"
      in [".", "q7"]
        estado = "q13"
      in ["-", "q7"]
        estado = "q12"
        ## OPCOES PARA Q8
      in [" ", "q8"]
        @frase += "U"
        estado = "q0"
      in [".", "q8"]
        estado = "q9"
      in ["-", "q8"]
        estado = "q14"
        ## OPCOES PARA Q9
      in [" ", "q9"]
        @frase += "F"
        estado = "q0"
        ## OPCOES PARA Q10
      in [" ", "q10"]
        @frase += "V"
        estado = "q0"
      in ["-", "q10"]
        estado = "q16"
        ## OPCOES PARA Q11
      in [" ", "q11"]
        @frase += "4"
        estado = "q0"
        ## OPCOES PARA Q12
      in [" ", "q12"]
        @frase += "W"
        estado = "q0"
      in [".", "q12"]
        estado = "q17"
      in ["-", "q12"]
        estado = "q18"
        ## OPCOES PARA Q13
      in [" ", "q13"]
        @frase += "R"
        estado = "q0"
      in [".", "q13"]
        estado = "q19"
      in ["-", "q13"]
        estado = "q14"
        ## OPCOES PARA Q14
      in [".", "q14"]
        estado = "q15"
      in ["-", "q14"]
        estado = "q20"
        ## OPCOES PARA Q15
      in [".", "q15"]
        estado = "q22"
      in ["-", "q15"]
        estado = "q21"
        ## OPCOES PARA Q16
      in [" ", "q16"]
        @frase += "3"
        estado = "q0"
        ## OPCOES PARA Q17
      in [" ", "q17"]
        @frase += "P"
        estado = "q0"
        ## OPCOES PARA Q18
      in [" ", "q18"]
        @frase += "J"
        estado = "q0"
      in ["-", "q18"]
        estado = "q23"
        ## OPCOES PARA Q19
      in [" ", "q19"]
        @frase += "L"
        estado = "q0"
        ## OPCOES PARA Q20
      in [" ", "q20"]
        @frase += "2"
        estado = "q0"
        ## OPCOES PARA Q21
      in [" ", "q21"]
        @frase += "."
        estado = "q0"
        ## OPCOES PARA Q22
      in [" ", "q22"]
        @frase += "?"
        estado = "q0"
        ## OPCOES PARA Q23
      in [" ", "q23"]
        @frase += "1"
        estado = "q0"
        ## OPCOES PARA Q24
      in [" ", "q24"]
        @frase += "T"
        estado = "q0"
      in [".", "q24"]
        estado = "q31"
      in ["-", "q24"]
        estado = "q25"
        ## OPCOES PARA Q25
      in [" ", "q25"]
        @frase += "M"
        estado = "q0"
      in [".", "q25"]
        estado = "q33"
      in ["-", "q25"]
        estado = "q26"
        ## OPCOES PARA Q26
      in [" ", "q26"]
        @frase += "O"
        estado = "q0"
      in [".", "q26"]
        estado = "q34"
      in ["-", "q26"]
        estado = "q27"
        ## OPCOES PARA Q27
      in [".", "q27"]
        estado = "q35"
      in ["-", "q27"]
        estado = "q28"
        ## OPCOES PARA Q28
      in [" ", "q28"]
        @frase += "0"
        estado = "q0"
        ## OPCOES PARA Q29
      in [" ", "q29"]
        @frase += "Y"
        estado = "q0"
        ## OPCOES PARA Q30
      in [" ", "q30"]
        @frase += "K"
        estado = "q0"
      in [".", "q30"]
        estado = "q36"
      in ["-", "q30"]
        estado = "q29"
        ## OPCOES PARA Q31
      in [" ", "q31"]
        @frase += "N"
        estado = "q0"
      in [".", "q31"]
        estado = "q37"
      in ["-", "q31"]
        estado = "q30"
        ## OPCOES PARA Q32
      in [" ", "q32"]
        @frase += "Q"
        estado = "q0"
        ## OPCOES PARA Q33
      in [" ", "q33"]
        @frase += "G"
        estado = "q0"
      in [".", "q33"]
        estado = "q39"
      in ["-", "q33"]
        estado = "q32"
        ## OPCOES PARA Q34
      in [" ", "q34"]
        @frase += "N"
        estado = "q0"
      in [".", "q34"]
        estado = "q40"
        ## OPCOES PARA Q35
      in [" ", "q35"]
        @frase += "9"
        estado = "q0"
        ## OPCOES PARA Q35
      in [" ", "q35"]
        @frase += "9"
        estado = "q0"
        ## OPCOES PARA Q36
      in [" ", "q36"]
        @frase += "C"
        estado = "q0"
        ## OPCOES PARA Q37
      in [" ", "q37"]
        @frase += "D"
        estado = "q0"
      in [".", "q37"]
        estado = "q41"
      in ["-", "q37"]
        estado = "q38"
        ## OPCOES PARA Q38
      in [" ", "q38"]
        @frase += "X"
        estado = "q0"
        ## OPCOES PARA Q39
      in [" ", "q39"]
        @frase += "Z"
        estado = "q0"
      in [".", "q39"]
        estado = "q42"
      in ["-", "q39"]
        estado = "q43"
        ## OPCOES PARA Q40
      in [" ", "q40"]
        @frase += "8"
        estado = "q0"
        ## OPCOES PARA Q41
      in [" ", "q41"]
        @frase += "B"
        estado = "q0"
      in [".", "q41"]
        estado = "q44"
        ## OPCOES PARA Q42
      in [" ", "q42"]
        @frase += "7"
        estado = "q0"
        ## OPCOES PARA Q43
      in ["-", "q43"]
        estado = "q46"
        ## OPCOES PARA Q44
      in [" ", "q44"]
        @frase += "6"
        estado = "q0"
      in ["-", "q44"]
        estado = "q45"
        ## OPCOES PARA Q45
      in [" ", "q45"]
        @frase += "-"
        estado = "q0"
        ## OPCOES PARA Q46
      in [" ", "q46"]
        @frase += ","
        estado = "q0"
      else
        puts "Erro"
        break
      end

      @indice += 1
    end
  end
end

morseExample = "-.-. --- -.. .. --. --- / -- --- .-. ... . / -.. . / . -..- . -- .--. .-.. --- "
invalidChar = "-.-. ....... "
allChars = ".- / -... / -.-. / -.. / . / ..-. / --. / .... / .. / .--- / -.- / .-.. / -- / -. / --- / .--. / --.- / .-. / ... / - / ..- / ...- / .-- / -..- / -.-- / --.. / .---- / ..--- / ...-- / ....- / ..... / -.... / --... / ---.. / ----. / ----- / --..-- / .-.-.- / -....- / ..--.. "

adf = ADF.new(invalidChar)

adf.iniciar
