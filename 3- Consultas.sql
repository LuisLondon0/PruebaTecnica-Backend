A. Número de personas que han consultado vuelos mayores a un valor de 5000.000 de pesos

select count(c.id)
from cliente c
inner join solicitud s 
on c.id = s.idCliente
inner join viaje v 
on s.idViaje = v.id
inner join tipoViaje t 
on v.tipoViaje = t.id
where t.nombre = "Vuelo" and v.precio >= 5000000;



B. Personas que han tomado los vuelos y han hecho el pago en efectivo.

select c.id, c.primerNombre, c.primerApellido
from cliente c
inner join solicitud s 
on c.id = s.idCliente
inner join pago p 
on s.codigoPago = p.codigo
inner join tipoPago t 
on v.tipoPago = t.id
where s.abordo = 1 and upper(trim(t.nombre)) = "EFECTIVO";



C. Personas mayores a 40 años y que viven en la ciudad de Bogotá.

select cl.id, cl.primerNombre, cl.primerApellido
from cliente cl
inner join ciudad ci
on cl.ciudad = ci.id
where upper(trim(ci.nombre)) = "BOGOTÁ" and cl.edad >= 40;



D. Listar los tipos de viajes turísticos y de negocios que se han hecho con pago con tarjeta de crédito.

select v.id, v.origen, v.destino, v.precio. v.horaSalida, v.horaLlegada
from viaje v
inner join tipoViaje tv
on v.tipoViaje = tv.id
inner join solicitud s
on v.id = s.idViaje
inner join pago p 
on s.codigoPago = p.codigo
inner join tipoPago tp 
on v.tipoPago = tp.id
where (upper(trim(tv.nombre)) = "NEGOCIOS" or upper(trim(tv.nombre)) = "TURISTICO") and upper(trim(tp.nombre)) = "TARJETA DE CREDITO"; 



E. Listar los viajes activos y cancelados.

//viajes activos

select *
from viaje
where activo = 1:


//viajes cancelados

select *
from viaje
where activo = 0:

