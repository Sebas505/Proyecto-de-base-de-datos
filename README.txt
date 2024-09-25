Usuario (User):
ID_Usuario (PK): Identificador único del usuario (Número o alfanumérico).
Nombre: Nombre del usuario (Texto).
Email: Dirección de correo electrónico del usuario (Texto).
Telefono: Número de teléfono del usuario (Texto o alfanumérico).

Curso (Course):
ID_Curso (PK): Identificador único del curso (Número).
Nombre: Nombre del curso (Texto).
Descripcion: Descripción del curso (Texto).
Nivel: Nivel del curso (Texto).

Insignia (Badge):
ID_Insignia (PK): Identificador único de la insignia (Número).
Nombre: Nombre de la insignia (Texto).
Descripcion: Descripción de la insignia (Texto).

Progreso_Curso (Course_Progress):
ID_Progreso (PK): Identificador único del progreso del curso (Número o alfanumérico).
Progreso: Porcentaje de progreso del curso (Número).
Fecha_Ultima_Actualizacion: Fecha de la última actualización del progreso (Texto o Fecha).
ID_Usuario (FK): Llave foránea que referencia a la entidad Usuario (Número o alfanumérico).
ID_Curso (FK): Llave foránea que referencia a la entidad Curso (Número o alfanumérico).

Usuario_Insignia (User_Badge):
ID_Usuario_Insignia (PK): Identificador único de la relación usuario-insignia (Número o alfanumérico).
ID_Usuario (FK): Llave foránea que referencia a la entidad Usuario (Número o alfanumérico).
ID_Insignia (FK): Llave foránea que referencia a la entidad Insignia (Número o alfanumérico).
Fecha_Obtenida: Fecha en que el usuario obtuvo la insignia (Texto o Fecha).

Relaciones:
Un usuario puede tomar muchos cursos, pero un curso solo puede ser tomado por un usuario a la vez (Relación uno a muchos entre Usuario y Curso, gestionada por la entidad Progreso_Curso).
Un usuario puede obtener muchas insignias, y una insignia puede ser otorgada a muchos usuarios (Relación muchos a muchos entre Usuario e Insignia, gestionada por la entidad Usuario_Insignia).