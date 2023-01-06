create user Jesu@localhost 
identified by "12345"; 
drop database colmado_espinal;

 use  colmado_Espinal;

/*Ardeni #6 */


/*Relacion entre cliente y empleado*/

create  database Colmado_Espinal;

create table Clientes(
Id_Clientes int primary key auto_increment not null,
Nombre varchar (15),
Telefono int (11),
Ubicacion varchar (15)

  
);

create table Empleados(
Id_Empleados int  auto_increment primary key not null,
Nombre varchar (15),
Telefono int (11),
Puesto varchar (15),
Id_Productos int (15),
Id_Clientes int (15),
  foreign key (Id_Productos)   references Productos (Id_Productos),
   foreign key (Id_Clientes) references Clientes (Id_Clientes)
 
);





/* Relacion de producto y pedido*/

create table Productos(
Id_Productos int primary key auto_increment not null,
Nombre varchar (15),
Precio varchar (11)

);

create table Pedidos(
Id_Pedidos int  auto_increment primary key  not null,
Nombre_Prod varchar (15),
Precio varchar (15),
Cantidad int (12),
Total int(12),
Id_Productos int not null,
Id_Empleados int not null,
Id_Clientes int not null,
  foreign key (Id_Productos)   references Productos (Id_Productos),
   foreign key (Id_Empleados) references Empleados (Id_Empleados),
     foreign key (Id_Clientes) references Clientes (Id_Clientes)
    
);








insert into clientes (Nombre,Telefono,Ubicacion)
               value ("Altagracia Galinda","9808792341","CLL-Porfirio Portorreal #2"),
                     ("Oliver Gatisa","0986577789","CLL-Malandra #7"),
                     ("Pedro Sanchez","09876535","CLL-El Libano #1"),
                     ("Maria Montalvo","08965342","CLL-Power #6"),
                     ("Victor Campusano","0896545633","CLL-Sanchez #9"),
                     ("Luisa Berroa","0891439986","Palave"),
                     ("Angelica garcia","0891233344","Hato Nuevo"),
                     ("victor Guzman","0891768914","CLL-Topitos"),
                     ("Francis Natra","089658129","CLL-Los Sapos"),
                     ("Sabastian Yatra","0895468817","CLL-Los Barones"),
                     ("Francis Sabala","08965443256","CLL-Los Tres Caballeros");
                     
                     
insert into Empleados (Nombre,Telefono,Puesto)
               value ("Sergio Aguero","87689096","Vendedor"),
                      ("Monica Galindo","8789765543","Vendedor"),
                      ("Dario Contreras","8292677789","Delivery"),
                      ("Luis Suares","8295460923","Delivery"),
                      ("Veronica Gonsalez","8298799953","Limpieza");
  

  
  insert into Productos (Nombre,Precio)
               value ("Azucar","25LB"),
                      ("Pan","10"),
                      ("Arroz","35LB"),
                      ("Berengena","18"),
                      ("Doña Gallina","10"),
                      ("Cebolla","55LB"),
                      ("Queso","315LB"),
                      ("Cerdo","150LB"),
                      ("Leche","100"),
                      ("Vinagre","10"),
                      ("Huevo","2x15"),
                      ("Hojuelitas_queso","15"),
                      ("Ace","50LB"),
                      ("Arina_trigo","40LB"),
                      ("Mantequilla","15"),
                      ("Habichuelas_Latas_Negras_P","55"),
                      ("Refresco_negro_Ltr","45"),
                      ("Biscocho_peds","15"),
                      ("Yuca","25"),
                      ("Papas_lays","35"),
                      ("Jugos_santal_litr","85"),
                      ("cafe","25"),
                      ("Aguacate","25"),
                      ("Tomates_Barcelo","75LB"),
                      ("Aji_Morron","30LB"),
                      ("Ajo","250LB"),
                      ("Molondron","50LB"),
                      ("Cloro","10"),
                      ("galletas dino","15"),
                      ("Zanahoria","45LB"),
                      ("Batata","25LB"),
                      ("Platano criollo","25"),
                      ("Platano blanco","15"),
                      ("Guieo","5"),
                      ("Platano maduro","25"),
                      ("Remolacha","40LB"),
                      ("Carne molida","300LB"),
                      ("Maiz","10LB"),
                      ("Pipiota","30LB"),
                      ("Yautia Morada","25LB"),
                      ("Yautia blanca","30LB"),
                      ("Habichuela","50LB"),
                      ("Guandule","100LB"),
                      ("Repolo","40LB"),
                      ("Lechua","40LB");
  
  
  
insert into pedidos (Nombre_Prod,Precio,Cantidad,Total,Id_Productos,ID_Empleados,Id_Clientes)
               value ("Pan","10","2","20","2","1","3"),
                      ("Cerdo","150LB","3","450","2","1","3"),
                      ("Huevo","2x15","4","30","12","4","5"),
                      ("Yuca","25LB","5","125","20","2","5"),
                      ("cafe","25","1","25","23","2","9"),
                       ("Guieo","5","6","30","35","1","1"),
                        ("Habichuela","50LB","2","100","43","4","1"),
                         ("Lechuga","40LB","1","40","46","1","10"),
                            ("Cloro","10","4","40","29","2","7"),
                               ("Molondron","50LB","2","100","28","3","1"),
                                  ("Mantequilla","15","2","30","16","2","4"),
                                     ("Aguacate","25","3","75","24","1","5"),
                                        ("Leche","100","2","200","10","3","2");
                      
     
     /*	sentencia	con	dos	tabla	*/
select	*	from	clientes;

   -- Sentencia Distinc --
select	distinct	Id_Clientes,Telefono	from	clientes;  
   
   /*	sentencia	con	where	*/
select	*	from	clientes	where	Ubicacion="palave";
     
     -- Sentencia AND y OR --
select	* 	from	clientes	where	Nombre="Oliver Gatisa"	and	Ubicacion="CLL-Malandra #7";

select	* 	from	clientes	where	Nombre="Maria Montalvo"	or	Telefono="8965342";

-- Sentencia Order by --
select	Precio,Nombre	from	productos	order by	Precio	asc;
select	Precio,Nombre	from	productos	order by	Precio	desc;

-- Sentencia inner JOIN --
select * from empleados inner join clientes on empleados.Telefono = clientes.Telefono; 

-- Insert--
insert into productos (Nombre, Precio)
                  values ("Masorca","19");
                  
    -- Sentencia Update --
update	clientes	set	Nombre="Oliver Gatisa", Nombre="Maria Ramos"
where	Id_Clientes="2";              
                  
select	* 	from	clientes	where	Nombre="Maria Ramos"	and	Ubicacion="CLL-Malandra #7";
select	* 	from	clientes	where	Nombre="Oliver Gatisa"	and	Ubicacion="CLL-Malandra #7";

-- Delete--
delete from clientes where Id_Clientes=6;

-- Sentencia between --
select*	from	pedidos	where	Id_Pedidos	between	1	and	5;



/*Trigger*/

create table Productos_Disponibles(
Id_Productos_In int primary key auto_increment not null,
Nombre varchar (15),
Precio varchar (11)

);

create trigger tr_informacion_Producto after insert on productos for each row insert into Productos_Disponibles value 
 (new.Id_Productos,new.Nombre,new.Precio);

select * From productos_Disponibles,productos;

-- Sentencia usuario --

create user Administrador@localhost
identified by "12345";

-- Sentencia para asignar privilegios --
grant select,update,insert
on clientes
to Aministrador@localhost;





 