-- *********************************************
-- * SQL MySQL generation                      
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Fri Nov 29 15:38:03 2024 
-- * LUN file: C:\Users\augus\Downloads\Hotelaria - Entrega C (1).lun 
-- * Schema: SCHEMA/1 
-- ********************************************* 


-- Database Section
-- ________________ 

create database SCHEMA;
use SCHEMA;


-- Tables Section
-- _____________ 

create table Acomoda (
     ID_Acomodacao int not null,
     Id_Hotel char(20) not null,
     constraint ID_Acomoda_ID primary key (ID_Acomodacao, Id_Hotel));

create table Acomodacao (
     ID_Acomodacao int not null,
     Tipo char(10) not null,
     Amenidade char(10) not null,
     Diaria int not null,
     Capacidade int not null,
     Status char(20) not null,
     constraint ID_Acomodacao_ID primary key (ID_Acomodacao));

create table Alimento (
     ID_Alimento int not null,
     Nome_Alimento char(20) not null,
     Validade date not null,
     Quantidade int not null,
     constraint ID_Alimento_ID primary key (ID_Alimento));

create table Aluga (
     ID_Filme char(10) not null,
     ID_Hospede int not null,
     constraint ID_Aluga_ID primary key (ID_Hospede, ID_Filme));

create table Armazena (
     ID_Alimento int not null,
     Id_Hotel char(20) not null,
     constraint ID_Armazena_ID primary key (ID_Alimento, Id_Hotel));

create table Bar (
     ID_Bar char(10) not null,
     Id_Hotel char(20) not null,
     constraint ID_Bar_ID primary key (ID_Bar),
     constraint SID_Bar_Hotel_ID unique (Id_Hotel));

create table Bebida_com_Cafeina (
     ID_bebida char(10) not null,
     Quantidade_de_Cafeina decimal(2,2) not null,
     constraint ID_Bebid_Bebid_1_ID primary key (ID_bebida));

create table Bebidas (
     ID_bebida char(10) not null,
     Nome_Bebida char(10) not null,
     Data_de_Validade date not null,
     Preco_Garrafa decimal(3,2) not null,
     Preco_Dose decimal(3,2),
     Nome_Drink char(10) not null,
     constraint ID_Bebidas_ID primary key (ID_bebida));

create table Bebidas_Alcoolicas (
     ID_bebida char(10) not null,
     Porcentagem_de_Alcool decimal(3,2) not null,
     constraint ID_Bebid_Bebid_ID primary key (ID_bebida));

create table Comanda (
     ID_Comanda int not null,
     Pag_ID_Hospede int not null,
     ID_hospede int not null,
     ID_Reserva bigint not null,
     Valor_total decimal(10,2) not null,
     constraint ID_Comanda_ID primary key (ID_Comanda),
     constraint SID_Coman_Hospe_ID unique (Pag_ID_Hospede));

create table Consumo (
     ID_Consumo int not null,
     Tipo_Consumo char(20) not null,
     ID_Consumido int not null,
     Preco_Consumido char(10) not null,
     Reg_ID_Comanda int not null,
     constraint ID_Consumo_ID primary key (ID_Consumo));

create table Drinks (
     Nome_Drink char(10) not null,
     Preco_Drink decimal(3,2) not null,
     Ing_Nome_Bebida char(20) not null,
     Ing_Nome_Alimento char(20) not null,
     ID_Bar char(10) not null,
     constraint ID_Drinks_ID primary key (Nome_Drink));

create table E_registrada (
     ID_Log int not null,
     ID_dependencia char(10) not null,
     constraint ID_E_registrada_ID primary key (ID_Log, ID_dependencia));

create table Emprega (
     ID_Funcionario int not null,
     Id_Hotel char(20) not null,
     constraint ID_Emprega_ID primary key (ID_Funcionario, Id_Hotel));

create table Entrega_Robo (
     ID_Entrega int not null,
     Empresa char(20) not null,
     Quarto int not null,
     Data date not null,
     Hora int not null,
     ID_Acomodacao int not null,
     constraint ID_Entrega_Robo_ID primary key (ID_Entrega));

create table Estacionamento (
     ID_Estacionamento char(10) not null,
     Id_Hotel char(20) not null,
     Numero_de_Vagas int not null,
     constraint ID_Estacionamento_ID primary key (ID_Estacionamento),
     constraint SID_Estac_Hotel_ID unique (Id_Hotel));

create table Filmes (
     ID_Filme char(10) not null,
     Nome_Filme char(50) not null,
     Data_Lancamento date not null,
     Genero char(20) not null,
     Diretor char(30) not null,
     constraint ID_Filmes_ID primary key (ID_Filme));

create table Funcionario (
     ID_Funcionario int not null,
     Nome char(50) not null,
     Tipo_de_Contrato_ char(10) not null,
     Salario char(10) not null,
     Beneficios char(20) not null,
     Hotel_que_trabalha char(10) not null,
     constraint ID_Funcionario_ID primary key (ID_Funcionario));

create table Hospede (
     ID_Hospede int not null,
     ID_Transacao int not null,
     Nome char(20) not null,
     Placa_Carro char(10) not null,
     constraint ID_Hospede_ID primary key (ID_Hospede),
     constraint SID_Hospe_Nota__ID unique (ID_Transacao));

create table Hotel (
     Id_Hotel char(20) not null,
     ID_Log int not null,
     Registro_Imobiliario bigint not null,
     Nome_Hotel char(20) not null,
     Categoria char(20) not null,
     Setores char(20) not null,
     Tamanho bigint not null,
     End_Cidade char(20) not null,
     End_CEP char(10) not null,
     Politica char(50) not null,
     ID_Lobby int,
     ID_espaco_de_eventos char(20) not null,
     constraint ID_Hotel_ID primary key (Id_Hotel),
     constraint SID_Hotel_Log_M_ID unique (ID_Log));

create table Lavanderia (
     Id_Peca int not null,
     Id_Hotel char(20) not null,
     Id_Hospede int not null,
     Status char(10) not null,
     Cat_Tipo_de_Roupa char(20) not null,
     Cat_Valor_Limpeza decimal(3,2) not null,
     constraint ID_Lavanderia_ID primary key (Id_Peca),
     constraint SID_Lavan_Hotel_ID unique (Id_Hotel));

create table Lobby (
     Tipo_Condominio char(10) not null,
     ID_Lobby char(10) not null,
     constraint IDLobby primary key (ID_Lobby));

create table Loja (
     ID_Loja char(10) not null,
     CNPJ bigint not null,
     Nome_Loja char(20) not null,
     Aluguel char(10) not null,
     Aba_ID_Lobby int not null,
     constraint ID_Loja_ID primary key (ID_Loja));

create table Nota_Fiscal (
     ID_Transacao int not null,
     ID_Hospede char(10) not null,
     constraint ID_Nota__Trans_ID primary key (ID_Transacao));

create table Prato (
     ID_Prato int not null,
     Nome_Prato char(20) not null,
     Preco_Prato decimal(4,2) not null,
     Descricao_Prato char(50) not null,
     Ing_ID_Alimento char(10) not null,
     Ing_Quantidade char(10) not null,
     constraint ID_Prato_ID primary key (ID_Prato));

create table Prograna_Fidelidade (
     Se__ID_Hospede int not null,
     ID_Hospede int not null,
     Visitas int not null,
     Pontos_Fidelidade int not null,
     constraint ID_Progr_Hospe_ID primary key (Se__ID_Hospede));

create table R (
     ID_Alimento int not null,
     ID_Prato int not null,
     constraint ID_R_ID primary key (ID_Alimento, ID_Prato));

create table Espaco_de_Evento_1 (
     ID_espaco_de_eventos char(20) not null,
     Capacidade int not null,
     Infraestrutura char(10) not null,
     Tipos_de_Uso char(20) not null,
     constraint ID_Espaco_de_Evento_ID primary key (ID_espaco_de_eventos));

create table Log_Manutencao (
     ID_Log char(1) not null,
     ID_Hotel char(1) not null,
     constraint IDLog_Manutencao primary key (ID_Log));

create table Recibo (
     ID_Transacao int not null,
     CNPJ bigint not null,
     Nome_Beneficiaria char(50) not null,
     constraint ID_Recib_Trans_ID primary key (ID_Transacao));

create table Requisicao (
     ID_Req int not null auto_increment,
     ID_Requisicao int not null,
     ID_Funcionario int not null,
     Status char(10) not null,
     Data_Abertura char(10) not null,
     Data_Fechamento date,
     Tipo_Requisicao char(10) not null,
     Comentario varchar(1000) not null,
     constraint ID_Requisicao_ID primary key (ID_Req));

create table Requisicao_Generica (
     ID_Req int not null,
     ID_Pool int not null,
     constraint ID_Requi_Requi_1_ID primary key (ID_Req));

create table Requisicao_Hospede (
     ID_Req int not null,
     ID_Hospede int not null,
     constraint ID_Requi_Requi_ID primary key (ID_Req));

create table Reserva_Quarto (
     ID_Reserva char(20) not null,
     R_H_ID_Hospede int not null,
     ID_Acomodacao int not null,
     ID_Hospede int not null,
     Dat_Entrada date not null,
     Dat_Saida date not null,
     constraint ID_Reserva_Quarto_ID primary key (ID_Reserva),
     constraint SID_Reser_Hospe_ID unique (R_H_ID_Hospede),
     constraint SID_Reser_Acomo_ID unique (ID_Acomodacao));

create table Reserva_Vaga (
     ID_Reserva char(10) not null,
     ID_Hospede int not null,
     Dur_Entrada char(10) not null,
     Dur_Saida char(10) not null,
     Pod_ID_Vaga char(10),
     constraint ID_Reserva_Vaga_ID primary key (ID_Reserva));

create table Status_Manutencao (
     ID_dependencia char(10) not null,
     Status_Limpeza char(10) not null,
     constraint ID_Status_Manutencao_ID primary key (ID_dependencia));

create table Transacoes (
     ID_Transacao int not null,
     Valor_Transacao decimal(10,2) not null,
     Data_Transacao date not null,
     constraint ID_Transacoes_ID primary key (ID_Transacao));

create table Translado (
     ID_Translado char(10) not null,
     Des_Nome_Destino char(50) not null,
     Des_Distancia decimal(2,2) not null,
     Des_Valor_Translado decimal(4,2) not null,
     constraint ID_Translado_ID primary key (ID_Translado));

create table Transporta (
     ID_Hospede int not null,
     ID_Translado char(10) not null,
     constraint ID_Transporta_ID primary key (ID_Translado, ID_Hospede));

create table Vaga (
     ID_Vaga char(10) not null,
     Status char not null,
     Coberta char not null,
     ID_Estacionamento char(10) not null,
     constraint ID_Vaga_ID primary key (ID_Vaga));


-- Constraints Section
-- ___________________ 

alter table Acomoda add constraint EQU_Acomo_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

alter table Acomoda add constraint EQU_Acomo_Acomo
     foreign key (ID_Acomodacao)
     references Acomodacao (ID_Acomodacao);

-- Not implemented
-- alter table Acomodacao add constraint ID_Acomodacao_CHK
--     check(exists(select * from Acomoda
--                  where Acomoda.ID_Acomodacao = ID_Acomodacao)); 

-- Not implemented
-- alter table Acomodacao add constraint ID_Acomodacao_CHK
--     check(exists(select * from Reserva_Quarto
--                  where Reserva_Quarto.ID_Acomodacao = ID_Acomodacao)); 

-- Not implemented
-- alter table Alimento add constraint ID_Alimento_CHK
--     check(exists(select * from R
--                  where R.ID_Alimento = ID_Alimento)); 

-- Not implemented
-- alter table Alimento add constraint ID_Alimento_CHK
--     check(exists(select * from Armazena
--                  where Armazena.ID_Alimento = ID_Alimento)); 

alter table Aluga add constraint REF_Aluga_Hospe
     foreign key (ID_Hospede)
     references Hospede (ID_Hospede);

alter table Aluga add constraint REF_Aluga_Filme_FK
     foreign key (ID_Filme)
     references Filmes (ID_Filme);

alter table Armazena add constraint EQU_Armaz_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

alter table Armazena add constraint EQU_Armaz_Alime
     foreign key (ID_Alimento)
     references Alimento (ID_Alimento);

alter table Bar add constraint SID_Bar_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

alter table Bebida_com_Cafeina add constraint ID_Bebid_Bebid_1_FK
     foreign key (ID_bebida)
     references Bebidas (ID_bebida);

alter table Bebidas add constraint EQU_Bebid_Drink_FK
     foreign key (Nome_Drink)
     references Drinks (Nome_Drink);

alter table Bebidas_Alcoolicas add constraint ID_Bebid_Bebid_FK
     foreign key (ID_bebida)
     references Bebidas (ID_bebida);

-- Not implemented
-- alter table Comanda add constraint ID_Comanda_CHK
--     check(exists(select * from Consumo
--                  where Consumo.Reg_ID_Comanda = ID_Comanda)); 

alter table Comanda add constraint SID_Coman_Hospe_FK
     foreign key (Pag_ID_Hospede)
     references Hospede (ID_Hospede);

alter table Consumo add constraint EQU_Consu_Coman_FK
     foreign key (Reg_ID_Comanda)
     references Comanda (ID_Comanda);

-- Not implemented
-- alter table Drinks add constraint ID_Drinks_CHK
--     check(exists(select * from Bebidas
--                  where Bebidas.Nome_Drink = Nome_Drink)); 

alter table Drinks add constraint REF_Drink_Bar_FK
     foreign key (ID_Bar)
     references Bar (ID_Bar);

alter table E_registrada add constraint EQU_E_reg_Statu_FK
     foreign key (ID_dependencia)
     references Status_Manutencao (ID_dependencia);

alter table Emprega add constraint EQU_Empre_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

alter table Emprega add constraint EQU_Empre_Funci
     foreign key (ID_Funcionario)
     references Funcionario (ID_Funcionario);

alter table Entrega_Robo add constraint REF_Entre_Acomo_FK
     foreign key (ID_Acomodacao)
     references Acomodacao (ID_Acomodacao);

-- Not implemented
-- alter table Estacionamento add constraint ID_Estacionamento_CHK
--     check(exists(select * from Vaga
--                  where Vaga.ID_Estacionamento = ID_Estacionamento)); 

alter table Estacionamento add constraint SID_Estac_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

-- Not implemented
-- alter table Funcionario add constraint ID_Funcionario_CHK
--     check(exists(select * from Emprega
--                  where Emprega.ID_Funcionario = ID_Funcionario)); 

-- Not implemented
-- alter table Hospede add constraint ID_Hospede_CHK
--     check(exists(select * from Requisicao_Hospede
--                  where Requisicao_Hospede.ID_Hospede = ID_Hospede)); 

-- Not implemented
-- alter table Hospede add constraint ID_Hospede_CHK
--     check(exists(select * from Comanda
--                  where Comanda.Pag_ID_Hospede = ID_Hospede)); 

-- Not implemented
-- alter table Hospede add constraint ID_Hospede_CHK
--     check(exists(select * from Reserva_Quarto
--                  where Reserva_Quarto.R_H_ID_Hospede = ID_Hospede)); 

-- Not implemented
-- alter table Hospede add constraint ID_Hospede_CHK
--     check(exists(select * from Prograna_Fidelidade
--                  where Prograna_Fidelidade.Se__ID_Hospede = ID_Hospede)); 

alter table Hospede add constraint SID_Hospe_Nota__FK
     foreign key (ID_Transacao)
     references Nota_Fiscal (ID_Transacao);

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Acomoda
--                  where Acomoda.Id_Hotel = Id_Hotel)); 

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Armazena
--                  where Armazena.Id_Hotel = Id_Hotel)); 

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Bar
--                  where Bar.Id_Hotel = Id_Hotel)); 

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Emprega
--                  where Emprega.Id_Hotel = Id_Hotel)); 

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Estacionamento
--                  where Estacionamento.Id_Hotel = Id_Hotel)); 

-- Not implemented
-- alter table Hotel add constraint ID_Hotel_CHK
--     check(exists(select * from Lavanderia
--                  where Lavanderia.Id_Hotel = Id_Hotel)); 

alter table Lavanderia add constraint SID_Lavan_Hotel_FK
     foreign key (Id_Hotel)
     references Hotel (Id_Hotel);

-- Not implemented
-- alter table Nota_Fiscal add constraint ID_Nota__Trans_CHK
--     check(exists(select * from Hospede
--                  where Hospede.ID_Transacao = ID_Transacao)); 

alter table Nota_Fiscal add constraint ID_Nota__Trans_FK
     foreign key (ID_Transacao)
     references Transacoes (ID_Transacao);

-- Not implemented
-- alter table Prato add constraint ID_Prato_CHK
--     check(exists(select * from R
--                  where R.ID_Prato = ID_Prato)); 

alter table Prograna_Fidelidade add constraint ID_Progr_Hospe_FK
     foreign key (Se__ID_Hospede)
     references Hospede (ID_Hospede);

alter table R add constraint EQU_R_Prato_FK
     foreign key (ID_Prato)
     references Prato (ID_Prato);

alter table R add constraint EQU_R_Alime
     foreign key (ID_Alimento)
     references Alimento (ID_Alimento);

alter table Recibo add constraint ID_Recib_Trans_FK
     foreign key (ID_Transacao)
     references Transacoes (ID_Transacao);

alter table Requisicao_Generica add constraint ID_Requi_Requi_1_FK
     foreign key (ID_Req)
     references Requisicao (ID_Req);

alter table Requisicao_Hospede add constraint EQU_Requi_Hospe_FK
     foreign key (ID_Hospede)
     references Hospede (ID_Hospede);

alter table Requisicao_Hospede add constraint ID_Requi_Requi_FK
     foreign key (ID_Req)
     references Requisicao (ID_Req);

alter table Reserva_Quarto add constraint SID_Reser_Hospe_FK
     foreign key (R_H_ID_Hospede)
     references Hospede (ID_Hospede);

alter table Reserva_Quarto add constraint SID_Reser_Acomo_FK
     foreign key (ID_Acomodacao)
     references Acomodacao (ID_Acomodacao);

alter table Reserva_Vaga add constraint REF_Reser_Vaga_FK
     foreign key (Pod_ID_Vaga)
     references Vaga (ID_Vaga);

-- Not implemented
-- alter table Status_Manutencao add constraint ID_Status_Manutencao_CHK
--     check(exists(select * from E_registrada
--                  where E_registrada.ID_dependencia = ID_dependencia)); 

alter table Transporta add constraint REF_Trans_Trans
     foreign key (ID_Translado)
     references Translado (ID_Translado);

alter table Transporta add constraint REF_Trans_Hospe_FK
     foreign key (ID_Hospede)
     references Hospede (ID_Hospede);

alter table Vaga add constraint EQU_Vaga_Estac_FK
     foreign key (ID_Estacionamento)
     references Estacionamento (ID_Estacionamento);


-- Index Section
-- _____________ 

create unique index ID_Acomoda_IND
     on Acomoda (ID_Acomodacao, Id_Hotel);

create index EQU_Acomo_Hotel_IND
     on Acomoda (Id_Hotel);

create unique index ID_Acomodacao_IND
     on Acomodacao (ID_Acomodacao);

create unique index ID_Alimento_IND
     on Alimento (ID_Alimento);

create unique index ID_Aluga_IND
     on Aluga (ID_Hospede, ID_Filme);

create index REF_Aluga_Filme_IND
     on Aluga (ID_Filme);

create unique index ID_Armazena_IND
     on Armazena (ID_Alimento, Id_Hotel);

create index EQU_Armaz_Hotel_IND
     on Armazena (Id_Hotel);

create unique index ID_Bar_IND
     on Bar (ID_Bar);

create unique index SID_Bar_Hotel_IND
     on Bar (Id_Hotel);

create unique index ID_Bebid_Bebid_1_IND
     on Bebida_com_Cafeina (ID_bebida);

create unique index ID_Bebidas_IND
     on Bebidas (ID_bebida);

create index EQU_Bebid_Drink_IND
     on Bebidas (Nome_Drink);

create unique index ID_Bebid_Bebid_IND
     on Bebidas_Alcoolicas (ID_bebida);

create unique index ID_Comanda_IND
     on Comanda (ID_Comanda);

create unique index SID_Coman_Hospe_IND
     on Comanda (Pag_ID_Hospede);

create unique index ID_Consumo_IND
     on Consumo (ID_Consumo);

create index EQU_Consu_Coman_IND
     on Consumo (Reg_ID_Comanda);

create unique index ID_Drinks_IND
     on Drinks (Nome_Drink);

create index REF_Drink_Bar_IND
     on Drinks (ID_Bar);

create unique index ID_E_registrada_IND
     on E_registrada (ID_Log, ID_dependencia);

create index EQU_E_reg_Statu_IND
     on E_registrada (ID_dependencia);

create unique index ID_Emprega_IND
     on Emprega (ID_Funcionario, Id_Hotel);

create index EQU_Empre_Hotel_IND
     on Emprega (Id_Hotel);

create unique index ID_Entrega_Robo_IND
     on Entrega_Robo (ID_Entrega);

create index REF_Entre_Acomo_IND
     on Entrega_Robo (ID_Acomodacao);

create unique index ID_Estacionamento_IND
     on Estacionamento (ID_Estacionamento);

create unique index SID_Estac_Hotel_IND
     on Estacionamento (Id_Hotel);

create unique index ID_Filmes_IND
     on Filmes (ID_Filme);

create unique index ID_Funcionario_IND
     on Funcionario (ID_Funcionario);

create unique index ID_Hospede_IND
     on Hospede (ID_Hospede);

create unique index SID_Hospe_Nota__IND
     on Hospede (ID_Transacao);

create unique index ID_Hotel_IND
     on Hotel (Id_Hotel);

create unique index SID_Hotel_Log_M_IND
     on Hotel (ID_Log);

create index KEY_Hotel
     on Hotel (ID_Lobby);

create index REF_Hotel_Espac
     on Hotel (ID_espaco_de_eventos);

create unique index ID_Lavanderia_IND
     on Lavanderia (Id_Peca);

create unique index SID_Lavan_Hotel_IND
     on Lavanderia (Id_Hotel);

create unique index ID_Loja_IND
     on Loja (ID_Loja);

create index KEY_Loja
     on Loja (Aba_ID_Lobby);

create unique index ID_Nota__Trans_IND
     on Nota_Fiscal (ID_Transacao);

create unique index ID_Prato_IND
     on Prato (ID_Prato);

create unique index ID_Progr_Hospe_IND
     on Prograna_Fidelidade (Se__ID_Hospede);

create unique index ID_R_IND
     on R (ID_Alimento, ID_Prato);

create index EQU_R_Prato_IND
     on R (ID_Prato);

create unique index ID_Espaco_de_Evento_IND
     on Espaco_de_Evento_1 (ID_espaco_de_eventos);

create unique index ID_Recib_Trans_IND
     on Recibo (ID_Transacao);

create unique index ID_Requisicao_IND
     on Requisicao (ID_Req);

create unique index ID_Requi_Requi_1_IND
     on Requisicao_Generica (ID_Req);

create index EQU_Requi_Hospe_IND
     on Requisicao_Hospede (ID_Hospede);

create unique index ID_Requi_Requi_IND
     on Requisicao_Hospede (ID_Req);

create unique index ID_Reserva_Quarto_IND
     on Reserva_Quarto (ID_Reserva);

create unique index SID_Reser_Hospe_IND
     on Reserva_Quarto (R_H_ID_Hospede);

create unique index SID_Reser_Acomo_IND
     on Reserva_Quarto (ID_Acomodacao);

create unique index ID_Reserva_Vaga_IND
     on Reserva_Vaga (ID_Reserva);

create index REF_Reser_Vaga_IND
     on Reserva_Vaga (Pod_ID_Vaga);

create unique index ID_Status_Manutencao_IND
     on Status_Manutencao (ID_dependencia);

create unique index ID_Transacoes_IND
     on Transacoes (ID_Transacao);

create unique index ID_Translado_IND
     on Translado (ID_Translado);

create unique index ID_Transporta_IND
     on Transporta (ID_Translado, ID_Hospede);

create index REF_Trans_Hospe_IND
     on Transporta (ID_Hospede);

create unique index ID_Vaga_IND
     on Vaga (ID_Vaga);

create index EQU_Vaga_Estac_IND
     on Vaga (ID_Estacionamento);

