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
se usara su codigo de cliente (continuando el proceso)
SI NO coincide, saldra un mensaje diciendo que el cliente ya existe con otros datos.
>>> esta validacion tambien podria darse al registrar la solicitud

*En Evaluar Solicitudes, debe poder separarse entre persona juridica/natural
*Al generar contrato, debe autogenerarse en pdf el contrato (esto peude ayudar: http://hashblogeando.wordpress.com/2013/07/14/itext-generacion-de-archivo-pdf-en-java/ o con Javascript http://parall.ax/products/jspdf)


*Validacion de Cambio de Categoria
Antes de registrar se tendra que verificar que el cliente no tenga solicitudes ,
si tiene solicitudes se validara que esten finalizadas(estado !=6) en este caso
se validara que la fecha de la ultima solicitud tenga 3 meses.
conclusion: el cliente podra pedir cambio de categoria cada 3 meses, y solo podra pedir si 
no tiene solicitudes en curso.
