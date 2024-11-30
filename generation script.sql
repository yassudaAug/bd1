-- Insert into Acomoda
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (5, 'H005');

-- Insert into Acomodacao
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (1, 'Suite', 'WiFi', 200, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (2, 'Deluxe', 'TV', 300, 3, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (3, 'Standard', 'AC', 150, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (4, 'Suite', 'WiFi', 200, 2, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (5, 'Deluxe', 'TV', 300, 3, 'Available');

-- Insert into Alimento
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (1, 'Bread', '2024-12-31', 100);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (2, 'Milk', '2024-11-30', 50);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (3, 'Eggs', '2024-10-15', 200);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (4, 'Butter', '2024-09-20', 30);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (5, 'Cheese', '2024-08-25', 40);

-- Insert into Aluga
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F001', 1);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F002', 2);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F003', 3);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F004', 4);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F005', 5);

-- Insert into Armazena
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (5, 'H005');

-- Insert into Bar
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B001', 'H001');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B002', 'H002');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B003', 'H003');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B004', 'H004');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B005', 'H005');

-- Insert into Bebida_com_Cafeina
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC001', 1.5);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC002', 2.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC003', 1.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC004', 1.8);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC005', 2.2);

-- Insert into Bebidas
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B001', 'Coke', '2024-12-31', 1.50, 0.50, 'Coke');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B002', 'Pepsi', '2024-11-30', 1.50, 0.50, 'Pepsi');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B003', 'Sprite', '2024-10-15', 1.50, 0.50, 'Sprite');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B004', 'Fanta', '2024-09-20', 1.50, 0.50, 'Fanta');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B005', '7Up', '2024-08-25', 1.50, 0.50, '7Up');

-- Insert into Bebidas_Alcoolicas
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA001', 5.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA002', 7.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA003', 4.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA004', 6.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA005', 8.0);

-- Insert into Comanda
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (1, 1, 1, 1001, 150.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (2, 2, 2, 1002, 200.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (3, 3, 3, 1003, 250.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (4, 4, 4, 1004, 300.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (5, 5, 5, 1005, 350.00);

-- Insert into Consumo
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (1, 'Drink', 1, '10.00', 1);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (2, 'Food', 2, '20.00', 2);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (3, 'Drink', 3, '15.00', 3);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (4, 'Food', 4, '25.00', 4);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (5, 'Drink', 5, '12.00', 5);

-- Insert into Drinks
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Mojito', 8.50, 'Rum', 'Mint', 'B001');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Martini', 10.00, 'Gin', 'Olive', 'B002');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Margarita', 9.00, 'Tequila', 'Lime', 'B003');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Old Fashioned', 11.00, 'Whiskey', 'Orange', 'B004');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Cosmopolitan', 9.50, 'Vodka', 'Cranberry', 'B005');

-- Insert into E_registrada
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (1, 'D001');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (2, 'D002');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (3, 'D003');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (4, 'D004');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (5, 'D005');

-- Insert into Emprega
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (5, 'H005');

-- Insert into Acomoda
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (5, 'H005');

-- Insert into Acomodacao
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (1, 'Suite', 'WiFi', 200, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (2, 'Deluxe', 'TV', 300, 3, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (3, 'Standard', 'AC', 150, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (4, 'Suite', 'WiFi', 200, 2, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (5, 'Deluxe', 'TV', 300, 3, 'Available');

-- Insert into Alimento
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (1, 'Bread', '2024-12-31', 100);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (2, 'Milk', '2024-11-30', 50);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (3, 'Eggs', '2024-10-15', 200);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (4, 'Butter', '2024-09-20', 30);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (5, 'Cheese', '2024-08-25', 40);

-- Insert into Aluga
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F001', 1);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F002', 2);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F003', 3);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F004', 4);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F005', 5);

-- Insert into Armazena
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (5, 'H005');

-- Insert into Bar
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B001', 'H001');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B002', 'H002');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B003', 'H003');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B004', 'H004');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B005', 'H005');

-- Insert into Bebida_com_Cafeina
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC001', 1.5);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC002', 2.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC003', 1.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC004', 1.8);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC005', 2.2);

-- Insert into Bebidas
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B001', 'Coke', '2024-12-31', 1.50, 0.50, 'Coke');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B002', 'Pepsi', '2024-11-30', 1.50, 0.50, 'Pepsi');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B003', 'Sprite', '2024-10-15', 1.50, 0.50, 'Sprite');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B004', 'Fanta', '2024-09-20', 1.50, 0.50, 'Fanta');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B005', '7Up', '2024-08-25', 1.50, 0.50, '7Up');

-- Insert into Bebidas_Alcoolicas
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA001', 5.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA002', 7.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA003', 4.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA004', 6.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA005', 8.0);

-- Insert into Comanda
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (1, 1, 1, 1001, 150.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (2, 2, 2, 1002, 200.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (3, 3, 3, 1003, 250.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (4, 4, 4, 1004, 300.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (5, 5, 5, 1005, 350.00);

-- Insert 5 tuples into Bebidas table
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B001', 'Bebida A', '2024-12-31', 10.00, 2.50, 'Drink A');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B002', 'Bebida B', '2024-11-30', 15.00, 3.00, 'Drink B');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B003', 'Bebida C', '2024-10-31', 20.00, 4.00, 'Drink C');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B004', 'Bebida D', '2024-09-30', 25.00, 5.00, 'Drink D');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B005', 'Bebida E', '2024-08-31', 30.00, 6.00, 'Drink E');

-- Insert 5 tuples into Bebidas_Alcoolicas table
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA001', 5.00);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA002', 10.00);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA003', 15.00);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA004', 20.00);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA005', 25.00);

-- Insert 5 tuples into Bebida_com_Cafeina table
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC001', 0.50);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC002', 1.00);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC003', 1.50);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC004', 2.00);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC005', 2.50);

-- Insert into Consumo
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (1, 'Drink', 1, '10.00', 1);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (2, 'Food', 2, '20.00', 2);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (3, 'Drink', 3, '15.00', 3);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (4, 'Food', 4, '25.00', 4);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (5, 'Drink', 5, '12.00', 5);

-- Insert 5 tuples into Bebidas table
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B001', 'Bebida A', '2024-12-31', 10.00, 2.50, 'Drink A');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B002', 'Bebida B', '2024-11-30', 15.00, 3.00, 'Drink B');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B003', 'Bebida C', '2024-10-31', 20.00, 4.00, 'Drink C');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B004', 'Bebida D', '2024-09-30', 25.00, 5.00, 'Drink D');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B005', 'Bebida E', '2024-08-31', 30.00, 6.00, 'Drink E');
-- Insert into Drinks
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Mojito', 8.50, 'Rum', 'Mint', 'B001');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Martini', 10.00, 'Gin', 'Olive', 'B002');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Margarita', 9.00, 'Tequila', 'Lime', 'B003');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Old Fashioned', 11.00, 'Whiskey', 'Orange', 'B004');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Cosmopolitan', 9.50, 'Vodka', 'Cranberry', 'B005');

-- Insert into E_registrada
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (1, 'D001');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (2, 'D002');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (3, 'D003');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (4, 'D004');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (5, 'D005');

-- Insert into Emprega
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (5, 'H005');

-- Insert into Entrega_Robo
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (1, 'RoboCorp', 101, '2024-12-01', 10, 1);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (2, 'RoboCorp', 102, '2024-12-02', 11, 2);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (3, 'RoboCorp', 103, '2024-12-03', 12, 3);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (4, 'RoboCorp', 104, '2024-12-04', 13, 4);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (5, 'RoboCorp', 105, '2024-12-05', 14, 5);

-- Insert into Estacionamento
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E001', 'H001', 50);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E002', 'H002', 60);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E003', 'H003', 70);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E004', 'H004', 80);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E005', 'H005', 90);

-- Insert into Filmes
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F001', 'Inception', '2010-07-16', 'Sci-Fi', 'Christopher Nolan');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F002', 'The Matrix', '1999-03-31', 'Sci-Fi', 'Lana Wachowski');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F003', 'Interstellar', '2014-11-07', 'Sci-Fi', 'Christopher Nolan');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F004', 'The Godfather', '1972-03-24', 'Crime', 'Francis Ford Coppola');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F005', 'Pulp Fiction', '1994-10-14', 'Crime', 'Quentin Tarantino');

-- Insert into Funcionario
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (1, 'John Doe', 'Full-time', '5000', 'Health Insurance', 'H001');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (2, 'Jane Smith', 'Part-time', '3000', 'None', 'H002');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (3, 'Alice Johnson', 'Full-time', '5500', 'Health Insurance', 'H003');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (4, 'Bob Brown', 'Contract', '4000', 'None', 'H004');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (5, 'Charlie Davis', 'Full-time', '6000', 'Health Insurance', 'H005');

-- Insert into Hospede
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (1, 1, 'John Doe', 'ABC-1234');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (2, 2, 'Jane Smith', 'DEF-5678');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (3, 3, 'Alice Johnson', 'GHI-9012');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (4, 4, 'Bob Brown', 'JKL-3456');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (5, 5, 'Charlie Davis', 'MNO-7890');

-- Insert into Hotel
('H001', 1, 12345678901, 'Hotel A', '5 Star', 'Sector 1', 1000, 'City A', '12345-678', 'No smoking', 1, 'E001'),
('H002', 2, 12345678902, 'Hotel B', '4 Star', 'Sector 2', 2000, 'City B', '23456-789', 'No pets', 2, 'E002'),
('H003', 3, 12345678903, 'Hotel C', '3 Star', 'Sector 3', 3000, 'City C', '34567-890', 'No smoking', 3, 'E003'),
('H004', 4, 12345678904, 'Hotel D', '2 Star', 'Sector 4', 4000, 'City D', '45678-901', 'No pets', 4, 'E004'),
('H005', 5, 12345678905, 'Hotel E', '1 Star', 'Sector 5', 5000, 'City E', '56789-012', 'No smoking', 5, 'E005');

-- Insert into Acomoda
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Acomoda (ID_Acomodacao, Id_Hotel) VALUES (5, 'H005');

-- Insert into Acomodacao
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (1, 'Suite', 'WiFi', 200, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (2, 'Deluxe', 'TV', 300, 3, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (3, 'Standard', 'AC', 150, 2, 'Available');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (4, 'Suite', 'WiFi', 200, 2, 'Occupied');
INSERT INTO Acomodacao (ID_Acomodacao, Tipo, Amenidade, Diaria, Capacidade, Status) VALUES (5, 'Deluxe', 'TV', 300, 3, 'Available');

-- Insert into Alimento
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (1, 'Bread', '2024-12-31', 100);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (2, 'Milk', '2024-11-30', 50);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (3, 'Eggs', '2024-10-15', 200);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (4, 'Butter', '2024-09-20', 30);
INSERT INTO Alimento (ID_Alimento, Nome_Alimento, Validade, Quantidade) VALUES (5, 'Cheese', '2024-08-25', 40);

-- Insert into Aluga
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F001', 1);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F002', 2);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F003', 3);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F004', 4);
INSERT INTO Aluga (ID_Filme, ID_Hospede) VALUES ('F005', 5);

-- Insert into Armazena
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Armazena (ID_Alimento, Id_Hotel) VALUES (5, 'H005');

-- Insert into Bar
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B001', 'H001');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B002', 'H002');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B003', 'H003');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B004', 'H004');
INSERT INTO Bar (ID_Bar, Id_Hotel) VALUES ('B005', 'H005');

-- Insert into Bebida_com_Cafeina
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC001', 1.5);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC002', 2.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC003', 1.0);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC004', 1.8);
INSERT INTO Bebida_com_Cafeina (ID_bebida, Quantidade_de_Cafeina) VALUES ('BC005', 2.2);

-- Insert into Bebidas
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B001', 'Coke', '2024-12-31', 1.50, 0.50, 'Coke');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B002', 'Pepsi', '2024-11-30', 1.50, 0.50, 'Pepsi');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B003', 'Sprite', '2024-10-15', 1.50, 0.50, 'Sprite');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B004', 'Fanta', '2024-09-20', 1.50, 0.50, 'Fanta');
INSERT INTO Bebidas (ID_bebida, Nome_Bebida, Data_de_Validade, Preco_Garrafa, Preco_Dose, Nome_Drink) VALUES ('B005', '7Up', '2024-08-25', 1.50, 0.50, '7Up');

-- Insert into Bebidas_Alcoolicas
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA001', 5.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA002', 7.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA003', 4.5);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA004', 6.0);
INSERT INTO Bebidas_Alcoolicas (ID_bebida, Porcentagem_de_Alcool) VALUES ('BA005', 8.0);

-- Insert into Comanda
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (1, 1, 1, 1001, 150.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (2, 2, 2, 1002, 200.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (3, 3, 3, 1003, 250.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (4, 4, 4, 1004, 300.00);
INSERT INTO Comanda (ID_Comanda, Pag_ID_Hospede, ID_hospede, ID_Reserva, Valor_total) VALUES (5, 5, 5, 1005, 350.00);

-- Insert into Consumo
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (1, 'Drink', 1, '10.00', 1);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (2, 'Food', 2, '20.00', 2);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (3, 'Drink', 3, '15.00', 3);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (4, 'Food', 4, '25.00', 4);
INSERT INTO Consumo (ID_Consumo, Tipo_Consumo, ID_Consumido, Preco_Consumido, Reg_ID_Comanda) VALUES (5, 'Drink', 5, '12.00', 5);

-- Insert into Drinks
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Mojito', 8.50, 'Rum', 'Mint', 'B001');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Martini', 10.00, 'Gin', 'Olive', 'B002');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Margarita', 9.00, 'Tequila', 'Lime', 'B003');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Old Fashioned', 11.00, 'Whiskey', 'Orange', 'B004');
INSERT INTO Drinks (Nome_Drink, Preco_Drink, Ing_Nome_Bebida, Ing_Nome_Alimento, ID_Bar) VALUES ('Cosmopolitan', 9.50, 'Vodka', 'Cranberry', 'B005');

-- Insert into E_registrada
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (1, 'D001');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (2, 'D002');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (3, 'D003');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (4, 'D004');
INSERT INTO E_registrada (ID_Log, ID_dependencia) VALUES (5, 'D005');

-- Insert into Emprega
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (1, 'H001');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (2, 'H002');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (3, 'H003');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (4, 'H004');
INSERT INTO Emprega (ID_Funcionario, Id_Hotel) VALUES (5, 'H005');

-- Insert into Entrega_Robo
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (1, 'RoboCorp', 101, '2024-12-01', 10, 1);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (2, 'RoboCorp', 102, '2024-12-02', 11, 2);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (3, 'RoboCorp', 103, '2024-12-03', 12, 3);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (4, 'RoboCorp', 104, '2024-12-04', 13, 4);
INSERT INTO Entrega_Robo (ID_Entrega, Empresa, Quarto, Data, Hora, ID_Acomodacao) VALUES (5, 'RoboCorp', 105, '2024-12-05', 14, 5);

-- Insert into Estacionamento
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E001', 'H001', 50);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E002', 'H002', 60);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E003', 'H003', 70);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E004', 'H004', 80);
INSERT INTO Estacionamento (ID_Estacionamento, Id_Hotel, Numero_de_Vagas) VALUES ('E005', 'H005', 90);

-- Insert into Filmes
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F001', 'Inception', '2010-07-16', 'Sci-Fi', 'Christopher Nolan');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F002', 'The Matrix', '1999-03-31', 'Sci-Fi', 'Lana Wachowski');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F003', 'Interstellar', '2014-11-07', 'Sci-Fi', 'Christopher Nolan');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F004', 'The Godfather', '1972-03-24', 'Crime', 'Francis Ford Coppola');
INSERT INTO Filmes (ID_Filme, Nome_Filme, Data_Lancamento, Genero, Diretor) VALUES ('F005', 'Pulp Fiction', '1994-10-14', 'Crime', 'Quentin Tarantino');

-- Insert into Funcionario
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (1, 'John Doe', 'Full-time', '5000', 'Health Insurance', 'H001');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (2, 'Jane Smith', 'Part-time', '3000', 'None', 'H002');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (3, 'Alice Johnson', 'Full-time', '5500', 'Health Insurance', 'H003');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (4, 'Bob Brown', 'Contract', '4000', 'None', 'H004');
INSERT INTO Funcionario (ID_Funcionario, Nome, Tipo_de_Contrato_, Salario, Beneficios, Hotel_que_trabalha) VALUES (5, 'Charlie Davis', 'Full-time', '6000', 'Health Insurance', 'H005');

-- Insert into Hospede
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (1, 1, 'John Doe', 'ABC-1234');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (2, 2, 'Jane Smith', 'DEF-5678');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (3, 3, 'Alice Johnson', 'GHI-9012');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (4, 4, 'Bob Brown', 'JKL-3456');
INSERT INTO Hospede (ID_Hospede, ID_Transacao, Nome, Placa_Carro) VALUES (5, 5, 'Charlie Davis', 'MNO-7890');

-- Insert 5 tuples into Hotel table
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H001', 1, 12345678901, 'Hotel A', '5 Star', 'Sector 1', 1000, 'City A', '12345-678', 'No smoking', 1, 'E001');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H002', 2, 12345678902, 'Hotel B', '4 Star', 'Sector 2', 2000, 'City B', '23456-789', 'No pets', 2, 'E002');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H003', 3, 12345678903, 'Hotel C', '3 Star', 'Sector 3', 3000, 'City C', '34567-890', 'No smoking', 3, 'E003');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H004', 4, 12345678904, 'Hotel D', '2 Star', 'Sector 4', 4000, 'City D', '45678-901', 'No pets', 4, 'E004');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H005', 5, 12345678905, 'Hotel E', '1 Star', 'Sector 5', 5000, 'City E', '56789-012', 'No smoking', 5, 'E005');

-- Insert 5 tuples into Lavanderia table
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (1, 'H001', 1, 'Clean', 'Shirt', 5.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (2, 'H002', 2, 'Dirty', 'Pants', 7.50);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (3, 'H003', 3, 'Clean', 'Jacket', 10.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (4, 'H004', 4, 'Dirty', 'Dress', 8.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (5, 'H005', 5, 'Clean', 'Skirt', 6.00);

-- Insert 5 tuples into Lobby table
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Residential', 'L001');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Commercial', 'L002');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Mixed', 'L003');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Residential', 'L004');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Commercial', 'L005');

-- Insert 5 tuples into Loja table
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L001', 12345678901234, 'Loja A', '1000', 1);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L002', 23456789012345, 'Loja B', '2000', 2);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L003', 34567890123456, 'Loja C', '3000', 3);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L004', 45678901234567, 'Loja D', '4000', 4);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L005', 56789012345678, 'Loja E', '5000', 5);

-- Insert 5 tuples into Nota_Fiscal table
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (1, 'H001');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (2, 'H002');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (3, 'H003');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (4, 'H004');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (5, 'H005');

-- Insert 5 tuples into Prato table
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (1, 'Prato A', 10.00, 'Descricao A', 'A001', '100g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (2, 'Prato B', 15.00, 'Descricao B', 'A002', '150g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (3, 'Prato C', 20.00, 'Descricao C', 'A003', '200g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (4, 'Prato D', 25.00, 'Descricao D', 'A004', '250g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (5, 'Prato E', 30.00, 'Descricao E', 'A005', '300g');

-- Insert 5 tuples into Prograna_Fidelidade table
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (1, 1, 10, 100);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (2, 2, 20, 200);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (3, 3, 30, 300);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (4, 4, 40, 400);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (5, 5, 50, 500);

-- Insert 5 tuples into R table
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (1, 1);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (2, 2);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (3, 3);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (4, 4);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (5, 5);

-- Insert 5 tuples into Espaco_de_Evento_1 table
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E001', 100, 'Infra A', 'Uso A');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E002', 200, 'Infra B', 'Uso B');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E003', 300, 'Infra C', 'Uso C');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E004', 400, 'Infra D', 'Uso D');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E005', 500, 'Infra E', 'Uso E');

-- Insert 5 tuples into Log_Manutencao table
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L001', 'H001');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L002', 'H002');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L003', 'H003');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L004', 'H004');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L005', 'H005');

-- Insert 5 tuples into Recibo table
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (1, 12345678901234, 'Beneficiaria A');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (2, 23456789012345, 'Beneficiaria B');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (3, 34567890123456, 'Beneficiaria C');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (4, 45678901234567, 'Beneficiaria D');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (5, 56789012345678, 'Beneficiaria E');

-- Insert 5 tuples into Requisicao table
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (1, 1, 1, 'Open', '2024-11-29', '2024-12-01', 'Tipo A', 'Comentario A');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (2, 2, 2, 'Closed', '2024-11-28', '2024-12-02', 'Tipo B', 'Comentario B');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (3, 3, 3, 'Open', '2024-11-27', '2024-12-03', 'Tipo C', 'Comentario C');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (4, 4, 4, 'Closed', '2024-11-26', '2024-12-04', 'Tipo D', 'Comentario D');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (5, 5, 5, 'Open', '2024-11-25', '2024-12-05', 'Tipo E', 'Comentario E');

-- Insert 5 tuples into Requisicao_Generica table
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (1, 1);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (2, 2);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (3, 3);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (4, 4);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (5, 5);

-- Insert 5 tuples into Requisicao_Hospede table
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (1, 1);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (2, 2);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (3, 3);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (4, 4);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (5, 5);

-- Insert 5 tuples into Reserva_Quarto table
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R001', 1, 1, 1, '2024-11-29', '2024-12-01');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R002', 2, 2, 2, '2024-11-28', '2024-12-02');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R003', 3, 3, 3, '2024-11-27', '2024-12-03');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R004', 4, 4, 4, '2024-11-26', '2024-12-04');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R005', 5, 5, 5, '2024-11-25', '2024-12-05');

-- Insert 5 tuples into Reserva_Vaga table
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV001', 1, '08:00', '18:00', 'V001');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV002', 2, '09:00', '19:00', 'V002');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV003', 3, '10:00', '20:00', 'V003');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV004', 4, '11:00', '21:00', 'V004');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV005', 5, '12:00', '22:00', 'V005');

-- Insert 5 tuples into Status_Manutencao table
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D001', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D002', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D003', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D004', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D005', 'Clean');

-- Insert 5 tuples into Transacoes table
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (1, 100.00, '2024-11-29');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (2, 200.00, '2024-11-28');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (3, 300.00, '2024-11-27');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (4, 400.00, '2024-11-26');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (5, 500.00, '2024-11-25');

INSERT INTO Trans-- Insert 5 tuples into Hotel table
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H001', 1, 12345678901, 'Hotel A', '5 Star', 'Sector 1', 1000, 'City A', '12345-678', 'No smoking', 1, 'E001');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H002', 2, 12345678902, 'Hotel B', '4 Star', 'Sector 2', 2000, 'City B', '23456-789', 'No pets', 2, 'E002');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H003', 3, 12345678903, 'Hotel C', '3 Star', 'Sector 3', 3000, 'City C', '34567-890', 'No smoking', 3, 'E003');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H004', 4, 12345678904, 'Hotel D', '2 Star', 'Sector 4', 4000, 'City D', '45678-901', 'No pets', 4, 'E004');
INSERT INTO Hotel (Id_Hotel, ID_Log, Registro_Imobiliario, Nome_Hotel, Categoria, Setores, Tamanho, End_Cidade, End_CEP, Politica, ID_Lobby, ID_espaco_de_eventos) VALUES ('H005', 5, 12345678905, 'Hotel E', '1 Star', 'Sector 5', 5000, 'City E', '56789-012', 'No smoking', 5, 'E005');

-- Insert 5 tuples into Lavanderia table
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (1, 'H001', 1, 'Clean', 'Shirt', 5.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (2, 'H002', 2, 'Dirty', 'Pants', 7.50);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (3, 'H003', 3, 'Clean', 'Jacket', 10.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (4, 'H004', 4, 'Dirty', 'Dress', 8.00);
INSERT INTO Lavanderia (Id_Peca, Id_Hotel, Id_Hospede, Status, Cat_Tipo_de_Roupa, Cat_Valor_Limpeza) VALUES (5, 'H005', 5, 'Clean', 'Skirt', 6.00);

-- Insert 5 tuples into Lobby table
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Residential', 'L001');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Commercial', 'L002');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Mixed', 'L003');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Residential', 'L004');
INSERT INTO Lobby (Tipo_Condominio, ID_Lobby) VALUES ('Commercial', 'L005');

-- Insert 5 tuples into Loja table
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L001', 12345678901234, 'Loja A', '1000', 1);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L002', 23456789012345, 'Loja B', '2000', 2);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L003', 34567890123456, 'Loja C', '3000', 3);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L004', 45678901234567, 'Loja D', '4000', 4);
INSERT INTO Loja (ID_Loja, CNPJ, Nome_Loja, Aluguel, Aba_ID_Lobby) VALUES ('L005', 56789012345678, 'Loja E', '5000', 5);

-- Insert 5 tuples into Nota_Fiscal table
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (1, 'H001');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (2, 'H002');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (3, 'H003');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (4, 'H004');
INSERT INTO Nota_Fiscal (ID_Transacao, ID_Hospede) VALUES (5, 'H005');

-- Insert 5 tuples into Prato table
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (1, 'Prato A', 10.00, 'Descricao A', 'A001', '100g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (2, 'Prato B', 15.00, 'Descricao B', 'A002', '150g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (3, 'Prato C', 20.00, 'Descricao C', 'A003', '200g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (4, 'Prato D', 25.00, 'Descricao D', 'A004', '250g');
INSERT INTO Prato (ID_Prato, Nome_Prato, Preco_Prato, Descricao_Prato, Ing_ID_Alimento, Ing_Quantidade) VALUES (5, 'Prato E', 30.00, 'Descricao E', 'A005', '300g');

-- Insert 5 tuples into Prograna_Fidelidade table
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (1, 1, 10, 100);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (2, 2, 20, 200);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (3, 3, 30, 300);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (4, 4, 40, 400);
INSERT INTO Prograna_Fidelidade (Se__ID_Hospede, ID_Hospede, Visitas, Pontos_Fidelidade) VALUES (5, 5, 50, 500);

-- Insert 5 tuples into R table
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (1, 1);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (2, 2);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (3, 3);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (4, 4);
INSERT INTO R (ID_Alimento, ID_Prato) VALUES (5, 5);

-- Insert 5 tuples into Espaco_de_Evento_1 table
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E001', 100, 'Infra A', 'Uso A');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E002', 200, 'Infra B', 'Uso B');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E003', 300, 'Infra C', 'Uso C');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E004', 400, 'Infra D', 'Uso D');
INSERT INTO Espaco_de_Evento_1 (ID_espaco_de_eventos, Capacidade, Infraestrutura, Tipos_de_Uso) VALUES ('E005', 500, 'Infra E', 'Uso E');

-- Insert 5 tuples into Log_Manutencao table
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L001', 'H001');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L002', 'H002');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L003', 'H003');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L004', 'H004');
INSERT INTO Log_Manutencao (ID_Log, ID_Hotel) VALUES ('L005', 'H005');

-- Insert 5 tuples into Recibo table
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (1, 12345678901234, 'Beneficiaria A');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (2, 23456789012345, 'Beneficiaria B');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (3, 34567890123456, 'Beneficiaria C');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (4, 45678901234567, 'Beneficiaria D');
INSERT INTO Recibo (ID_Transacao, CNPJ, Nome_Beneficiaria) VALUES (5, 56789012345678, 'Beneficiaria E');

-- Insert 5 tuples into Requisicao table
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (1, 1, 1, 'Open', '2024-11-29', '2024-12-01', 'Tipo A', 'Comentario A');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (2, 2, 2, 'Closed', '2024-11-28', '2024-12-02', 'Tipo B', 'Comentario B');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (3, 3, 3, 'Open', '2024-11-27', '2024-12-03', 'Tipo C', 'Comentario C');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (4, 4, 4, 'Closed', '2024-11-26', '2024-12-04', 'Tipo D', 'Comentario D');
INSERT INTO Requisicao (ID_Req, ID_Requisicao, ID_Funcionario, Status, Data_Abertura, Data_Fechamento, Tipo_Requisicao, Comentario) VALUES (5, 5, 5, 'Open', '2024-11-25', '2024-12-05', 'Tipo E', 'Comentario E');

-- Insert 5 tuples into Requisicao_Generica table
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (1, 1);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (2, 2);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (3, 3);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (4, 4);
INSERT INTO Requisicao_Generica (ID_Req, ID_Pool) VALUES (5, 5);

-- Insert 5 tuples into Requisicao_Hospede table
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (1, 1);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (2, 2);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (3, 3);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (4, 4);
INSERT INTO Requisicao_Hospede (ID_Req, ID_Hospede) VALUES (5, 5);

-- Insert 5 tuples into Reserva_Quarto table
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R001', 1, 1, 1, '2024-11-29', '2024-12-01');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R002', 2, 2, 2, '2024-11-28', '2024-12-02');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R003', 3, 3, 3, '2024-11-27', '2024-12-03');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R004', 4, 4, 4, '2024-11-26', '2024-12-04');
INSERT INTO Reserva_Quarto (ID_Reserva, R_H_ID_Hospede, ID_Acomodacao, ID_Hospede, Dat_Entrada, Dat_Saida) VALUES ('R005', 5, 5, 5, '2024-11-25', '2024-12-05');

-- Insert 5 tuples into Reserva_Vaga table
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV001', 1, '08:00', '18:00', 'V001');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV002', 2, '09:00', '19:00', 'V002');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV003', 3, '10:00', '20:00', 'V003');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV004', 4, '11:00', '21:00', 'V004');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV005', 5, '12:00', '22:00', 'V005');

-- Insert 5 tuples into Status_Manutencao table
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D001', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D002', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D003', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D004', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D005', 'Clean');
-- Insert 5 tuples into Reserva_Vaga table
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV001', 1, '08:00', '18:00', 'V001');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV002', 2, '09:00', '19:00', 'V002');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV003', 3, '10:00', '20:00', 'V003');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV004', 4, '11:00', '21:00', 'V004');
INSERT INTO Reserva_Vaga (ID_Reserva, ID_Hospede, Dur_Entrada, Dur_Saida, Pod_ID_Vaga) VALUES ('RV005', 5, '12:00', '22:00', 'V005');

-- Insert 5 tuples into Status_Manutencao table
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D001', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D002', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D003', 'Clean');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D004', 'Dirty');
INSERT INTO Status_Manutencao (ID_dependencia, Status_Limpeza) VALUES ('D005', 'Clean');

-- Insert 5 tuples into Transacoes table
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (1, 100.00, '2024-11-29');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (2, 200.00, '2024-11-28');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (3, 300.00, '2024-11-27');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (4, 400.00, '2024-11-26');
INSERT INTO Transacoes (ID_Transacao, Valor_Transacao, Data_Transacao) VALUES (5, 500.00, '2024-11-25');

-- Insert 5 tuples into Translado table
INSERT INTO Translado (ID_Translado, Des_Nome_Destino, Des_Distancia, Des_Valor_Translado) VALUES ('T001', 'Destino A', 10.00, 50.00);
INSERT INTO Translado (ID_Translado, Des_Nome_Destino, Des_Distancia, Des_Valor_Translado) VALUES ('T002', 'Destino B', 20.00, 100.00);
INSERT INTO Translado (ID_Translado, Des_Nome_Destino, Des_Distancia, Des_Valor_Translado) VALUES ('T003', 'Destino C', 30.00, 150.00);
INSERT INTO Translado (ID_Translado, Des_Nome_Destino, Des_Distancia, Des_Valor_Translado) VALUES ('T004', 'Destino D', 40.00, 200.00);
INSERT INTO Translado (ID_Translado, Des_Nome_Destino, Des_Distancia, Des_Valor_Translado) VALUES ('T005', 'Destino E', 50.00, 250.00);

-- Insert 5 tuples into Transporta table
INSERT INTO Transporta (ID_Hospede, ID_Translado) VALUES (1, 'T001');
INSERT INTO Transporta (ID_Hospede, ID_Translado) VALUES (2, 'T002');
INSERT INTO Transporta (ID_Hospede, ID_Translado) VALUES (3, 'T003');
INSERT INTO Transporta (ID_Hospede, ID_Translado) VALUES (4, 'T004');
INSERT INTO Transporta (ID_Hospede, ID_Translado) VALUES (5, 'T005');

-- Insert 5 tuples into Vaga table
INSERT INTO Vaga (ID_Vaga, Status, Coberta, ID_Estacionamento) VALUES ('V001', 'Available', 'Yes', 'E001');
INSERT INTO Vaga (ID_Vaga, Status, Coberta, ID_Estacionamento) VALUES ('V002', 'Occupied', 'No', 'E002');
INSERT INTO Vaga (ID_Vaga, Status, Coberta, ID_Estacionamento) VALUES ('V003', 'Available', 'Yes', 'E003');
INSERT INTO Vaga (ID_Vaga, Status, Coberta, ID_Estacionamento) VALUES ('V004', 'Occupied', 'No', 'E004');
INSERT INTO Vaga (ID_Vaga, Status, Coberta, ID_Estacionamento) VALUES ('V005', 'Available', 'Yes', 'E005');