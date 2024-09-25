-- Creación de la tabla Usuario
CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Email TEXT NOT NULL,
    Telefono TEXT
);

-- Creación de la tabla Curso
CREATE TABLE Curso (
    ID_Curso INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Descripcion TEXT NOT NULL,
    Nivel TEXT NOT NULL
);

-- Creación de la tabla Insignia
CREATE TABLE Insignia (
    ID_Insignia INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Descripcion TEXT
);

-- Creación de la tabla Progreso_Curso (relación entre Usuario y Curso)
CREATE TABLE Progreso_Curso (
    ID_Progreso INTEGER PRIMARY KEY AUTOINCREMENT,
    Progreso INTEGER NOT NULL,
    Fecha_Ultima_Actualizacion TEXT,
    ID_Usuario INTEGER NOT NULL,
    ID_Curso INTEGER NOT NULL,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);

-- Creación de la tabla Usuario_Insignia (relación entre Usuario e Insignia)
CREATE TABLE Usuario_Insignia (
    ID_Usuario_Insignia INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Usuario INTEGER NOT NULL,
    ID_Insignia INTEGER NOT NULL,
    Fecha_Obtenida TEXT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Insignia) REFERENCES Insignia(ID_Insignia)
);
