*---------------------------- ARQUIVO TST1U.PRG ------------------------------*

SET PROCEDURE TO UTIL
DO UTIL
*DO OPENING
DO MENU
RETURN




PROCEDURE OPENING
SET CURSOR OFF
SET SCOREBOARD OFF
SET COLOR TO W/B
*VERIFY("2E4A-12CD",1)
*RET = ACESSCODE("WAGNER LONGO CASTRO")
*IF RET = 1 .OR. RET = 2
*   SIGNAL("QUADRO PARA INFORMACOES","GERAIS SOBRE ERROS OCORRIDOS","DURANTE A LINK-EDICAO")
*ENDIF
*@ 22,00 TO 24,79
**MESSAGE(REPLICATE("-",80))
*INKEY(0)
*MESSAGE(REPLICATE("-",40),.T.)
*INKEY(0)
*MESSAGE()
*WARNING("APERTE QUALQUER TECLA...")
*SET DEVICE TO SCREEN
*CONFIRM("SAIDA DO PROGRAMA")
*CLEAR
*DSP(10,10,"WAGNER LONGO CASTRO")
*DSP(12,10,"LONGO SANTANA SOFTWARE",50)
*DECLARE OPC[15],HOT[15]
*OPC[1]  = "CADASTRO DE ALUNOS     "
*OPC[2]  = "CADASTRO DE CURSOS     "
*OPC[3]  = "CADASTRO DE PROFESSORES"
*OPC[4]  = "MANUTENCAO DIARIA      "
*OPC[5]  = "FINALIZAR OPERACOES    "
*OPC[6]  = "OPERACOES DE DISCO     "
*OPC[7]  = "OPERACOES DE LEITURA   "
*OPC[8]  = "OPCAO PARA MANUTENCAO  "
*OPC[9]  = "OPCAO DESATIVADA 1     "
*OPC[10] = "OPCAO DESATIVADA 2     "
*OPC[11] = "OPCAO DESATIVADA 3     "
*OPC[12] = "OPCAO DESATIVADA 4     "
*OPC[13] = "OPCAO DESATIVADA 5     "
*OPC[14] = "OPCAO DESATIVADA 6     "
*OPC[15] = "OPCAO DESATIVADA 7     "
*HOT[1]  = 1
*HOT[2]  = 2
*HOT[3]  = 3
*HOT[4]  = 1
*HOT[5]  = 1
*HOT[6]  = 14
*HOT[7]  = 14
*HOT[8]  = 12
*HOT[9]  = 18
*HOT[10] = 18
*HOT[11] = 18
*HOT[12] = 18
*HOT[13] = 18
*HOT[14] = 18
*HOT[15] = 18
*N1  = "MENU      "
*N2  = "PRINCIPAL "
*SYS = "SISTEMA DE ADMINISTRACAO     "
*MNU = ADDMENU(OPC,HOT,03,10,"",""," MENU PRINCIPAL ","","")
*BOXMENU(1,"W/B,W+/BG,,,W+/B")
*INKEY(0)
*XXX = READMENU(1,"W/B,W+/BG,,,W+/B")
*INKEY(0)
*OPENBOX(10,10,20,70,"")
*INKEY(0)
*CLOSEBOX()
*INKEY(0)
*ZAPMENU()
*INKEY(0)
*OPTMENU(OPC,"  MENU DE OPCOES  ")

DECLARE IDX[6],CDX[6]
ARQ    = "CADALUN.DBF"
CMT    = "CADASTRO DE ALUNOS  "
ARE    = "ALUNOS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO ALUNO     "
IDX[2] = "NOME"
CDX[2] = "NOME DO ALUNO       "
IDX[3] = "VAL(SUBSTR(COD,5,2))"
CDX[3] = "CURSO DO ALUNO      "
IDX[4] = "BAIRRO"
CDX[4] = "BAIRRO DO ALUNO     "
IDX[5] = "DAY(DATANASC)"
CDX[5] = "DIA DA DATA NASC.   "
IDX[6] = "SUBSTR(COD,5,2)+NOME"
CDX[6] = "CODIGO/NOME DO ALUNO"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[2],CDX[2]
ARQ    = "CADPROF.DBF"
CMT    = "CADASTRO DE PROFS"
ARE    = "PROFS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO PROFESSOR"
IDX[2] = "NOME"
CDX[2] = "NOME DO PROFERSSOR"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[4],CDX[4]
ARQ    = "CADCUR.DBF"
CMT    = "CADASTRO DE CURSO"
ARE    = "CURSO"
IDX[1] = "COD"
CDX[1] = "CODIGO DO CURSO"
IDX[2] = "NOME"
CDX[2] = "NOME DO CURSO"
IDX[3] = "SALA"
CDX[3] = "SALA DO CURSO"
IDX[4] = "HORAINC"
CDX[4] = "HORARIO INICIAL"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)


DECLARE IDX[6],CDX[6]
ARQ    = "CADALUN.DBF"
CMT    = "CADASTRO DE ALUNOS  "
ARE    = "ALUNOS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO ALUNO     "
IDX[2] = "NOME"
CDX[2] = "NOME DO ALUNO       "
IDX[3] = "VAL(SUBSTR(COD,5,2))"
CDX[3] = "CURSO DO ALUNO      "
IDX[4] = "BAIRRO"
CDX[4] = "BAIRRO DO ALUNO     "
IDX[5] = "DAY(DATANASC)"
CDX[5] = "DIA DA DATA NASC.   "
IDX[6] = "SUBSTR(COD,5,2)+NOME"
CDX[6] = "CODIGO/NOME DO ALUNO"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[2],CDX[2]
ARQ    = "CADPROF.DBF"
CMT    = "CADASTRO DE PROFS"
ARE    = "PROFS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO PROFESSOR"
IDX[2] = "NOME"
CDX[2] = "NOME DO PROFERSSOR"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[4],CDX[4]
ARQ    = "CADCUR.DBF"
CMT    = "CADASTRO DE CURSO"
ARE    = "CURSO"
IDX[1] = "COD"
CDX[1] = "CODIGO DO CURSO"
IDX[2] = "NOME"
CDX[2] = "NOME DO CURSO"
IDX[3] = "SALA"
CDX[3] = "SALA DO CURSO"
IDX[4] = "HORAINC"
CDX[4] = "HORARIO INICIAL"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[6],CDX[6]
ARQ    = "CADALUN.DBF"
CMT    = "CADASTRO DE ALUNOS  "
ARE    = "ALUNOS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO ALUNO     "
IDX[2] = "NOME"
CDX[2] = "NOME DO ALUNO       "
IDX[3] = "VAL(SUBSTR(COD,5,2))"
CDX[3] = "CURSO DO ALUNO      "
IDX[4] = "BAIRRO"
CDX[4] = "BAIRRO DO ALUNO     "
IDX[5] = "DAY(DATANASC)"
CDX[5] = "DIA DA DATA NASC.   "
IDX[6] = "SUBSTR(COD,5,2)+NOME"
CDX[6] = "CODIGO/NOME DO ALUNO"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[2],CDX[2]
ARQ    = "CADPROF.DBF"
CMT    = "CADASTRO DE PROFS"
ARE    = "PROFS"
IDX[1] = "COD"
CDX[1] = "CODIGO DO PROFESSOR"
IDX[2] = "NOME"
CDX[2] = "NOME DO PROFERSSOR"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

DECLARE IDX[4],CDX[4]
ARQ    = "CADCUR.DBF"
CMT    = "CADASTRO DE CURSO"
ARE    = "CURSO"
IDX[1] = "COD"
CDX[1] = "CODIGO DO CURSO"
IDX[2] = "NOME"
CDX[2] = "NOME DO CURSO"
IDX[3] = "SALA"
CDX[3] = "SALA DO CURSO"
IDX[4] = "HORAINC"
CDX[4] = "HORARIO INICIAL"
ADDDBF(ARQ,CMT,ARE,IDX,CDX)

INITDBF(7)
INDEX ON COD TO PADRAO
INDEXDBF(7,.T.)
CLOSEDBF(7)
INKEY(0)
INITDBF()

INDEXDBF(.T.,.T.)
INKEY(0)

INKEY(0)
DECLARE FECHA[9]
FECHA[1] = .F.
FECHA[2] = .F.
FECHA[3] = .T.
FECHA[4] = .T.
FECHA[5] = .F.
FECHA[6] = .F.
FECHA[7] = .F.
FECHA[8] = .F.
FECHA[9] = .F.
CLOSEDBF(FECHA)
INKEY(0)
SET CURSOR ON
RETURN


PROCEDURE TST
DECLARE TELA[7],VARI[7],MASC[7],LINH[7],COLU[7],VALI[7]
CODIGO = "SDDDFDDD"
NOME = "ASASADADAS"+SPACE(25)
ENDERECO = "TERERERERE"+SPACE(30)
CIDADE = "SSSSSSSSSS"+SPACE(25)
ESTADO = "SD"
BAIRRO = "REFSFSDWSD"+SPACE(15)
CEP = "DFSFSDADA  "
TELA[1] = "CODIGO......:"
TELA[2] = "NOME........:"
TELA[3] = "ENDERECO....:"
TELA[4] = "CIDADE......:"
TELA[5] = "ESTADO......:"
TELA[6] = "BAIRRO......:"
TELA[7] = "C.E.P.......:"
VARI[1] = "CODIGO"
VARI[2] = "NOME"
VARI[3] = "ENDERECO"
VARI[4] = "CIDADE"
VARI[5] = "ESTADO"
VARI[6] = "BAIRRO"
VARI[7] = "CEP"
MASC[1] = "9999-!!"
MASC[2] = "@!"
MASC[3] = "@!"
MASC[4] = "@!"
MASC[5] = "!!"
MASC[6] = "@!"
MASC[7] = "99.999-999"
LINH[1] = 7
LINH[5] = 10
LINH[7] = 11
COLU[1] = 2
COLU[5] = 51
COLU[6] = 2
COLU[7] = 51
AFILL(VALI,".T.")
? "COMECEI..."
ADDSCR(VARI,TELA,MASC,LINH,COLU,VALI)
?? "TERMINEI...TEMPO PARA INCLUIR 1 UNICA TELA..."
INKEY(0)
DSPSCR(1)
INKEY(0)
DSPPCT(1)
INKEY(0)
EDTSCR(1)
INKEY(0)
SET CURSOR ON
READSCR(1)
INKEY(0)
ZAPSCR()
RETURN

PROCEDURE STAT_1
RETURN


PROCEDURE MENU
DECLARE OPC[15],HOT[15]
OPC[1]  = "CADASTRO DE ALUNOS     "
OPC[2]  = "CADASTRO DE CURSOS     "
OPC[3]  = "CADASTRO DE PROFESSORES"
OPC[4]  = "MANUTENCAO DIARIA      "
OPC[5]  = "FINALIZAR OPERACOES    "
OPC[6]  = "OPERACOES DE DISCO     "
OPC[7]  = "OPERACOES DE LEITURA   "
OPC[8]  = "OPCAO PARA MANUTENCAO  "
OPC[9]  = "OPCAO DESATIVADA 1     "
OPC[10] = "OPCAO DESATIVADA 2     "
OPC[11] = "OPCAO DESATIVADA 3     "
OPC[12] = "OPCAO DESATIVADA 4     "
OPC[13] = "OPCAO DESATIVADA 5     "
OPC[14] = "OPCAO DESATIVADA 6     "
OPC[15] = "OPCAO DESATIVADA 7     "
HOT[1]  = 1
HOT[2]  = 2
HOT[3]  = 3
HOT[4]  = 1
HOT[5]  = 1
HOT[6]  = 14
HOT[7]  = 14
HOT[8]  = 12
HOT[9]  = 18
HOT[10] = 18
HOT[11] = 18
HOT[12] = 18
HOT[13] = 18
HOT[14] = 18
HOT[15] = 18
MNU = ADDMENU(OPC,HOT,03,10,"",""," MENU PRINCIPAL ","","")

DECLARE OPC[12],HOT[12]
OPC[1]  = "CADASTRO DE ALUNOS     "
OPC[2]  = "CADASTRO DE CURSOS     "
OPC[3]  = "CADASTRO DE PROFESSORES"
OPC[4]  = "MANUTENCAO DIARIA      "
OPC[5]  = "FINALIZAR OPERACOES    "
OPC[6]  = "OPERACOES DE DISCO     "
OPC[7]  = "OPERACOES DE LEITURA   "
OPC[8]  = "OPCAO PARA MANUTENCAO  "
OPC[9]  = "OPCAO DESATIVADA 1     "
OPC[10] = "OPCAO DESATIVADA 2     "
OPC[11] = "OPCAO DESATIVADA 3     "
OPC[12] = "OPCAO DESATIVADA 4     "
HOT[1]  = 1
HOT[2]  = 2
HOT[3]  = 3
HOT[4]  = 1
HOT[5]  = 1
HOT[6]  = 14
HOT[7]  = 14
HOT[8]  = 12
HOT[9]  = 18
HOT[10] = 18
HOT[11] = 18
HOT[12] = 18
MNU = ADDMENU(OPC,HOT,03,10,"",""," MENU PRINCIPAL ","","")

BOXMENU(1,"W/B,W+/BG,,,W+/B")
INKEY(0)
XXX = READMENU(1,"W/B,W+/BG,,,W+/B")
ZAPMENU()
BOXMENU(2,"W/B,W+/BG,,,W+/B")
INKEY(0)
XXX = READMENU(2,"W/B,W+/BG,,,W+/B")
ZAPMENU()
RETURN
