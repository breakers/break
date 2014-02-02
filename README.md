break
=======

Proyecto Organizacional

Integrantes
=======

*Apaza Arroyo, Felix
*Delgado Guerra, Renzo
*Quevedo Grimaldo, Ricardo
=======
* Validacion Cliente de SOLICITUD DE NUEVA CONTRATACION:
La solicitud aceptara todos los solicitantes,
al revisar Y dar aprobar solicitud, se validara que el numDocumento del cliente no exista,
si existe, se validara que todos los datos del cliente conincidan, si coincide
se usara su codigo de cliente,
SI NO coincide, saldra un mensaje diciendo que el cliente ya existe con otros datos.
>>> esta validacion tambien podria darse al registrar la solicitud



*Validacion de Cambio de Categoria
Antes de registrar se tendra que verificar que el cliente no tenga solicitudes ,
si tiene solicitudes se validara que esten finalizadas(estado !=6) en este caso
se validara que la fecha de la ultima solicitud tenga 3 meses.
conclusion: el cliente podra pedir cambio de categoria cada 3 meses, y solo podra pedir si 
no tiene solicitudes en curso