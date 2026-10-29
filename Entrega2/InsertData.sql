
INSERT INTO Empresa (nombre, rut_ope, rut_pla, rut_pe)
VALUES (
  'CIQ Minería S.A.',
  '77.123.456-1',   -- Gerencia de Operaciones
  '77.123.457-0',   -- Gerencia de Planificación
  '77.123.458-9'    -- Gerencia de Personas
);

INSERT INTO Gerencia_Operaciones (rut_ope) VALUES ('77.123.456-1');
INSERT INTO Gerencia_Planificacion (rut_pla) VALUES ('77.123.457-0');
INSERT INTO Gerencia_Personas (rut_pe) VALUES ('77.123.458-9');


INSERT INTO Tipo_Area_Operaciones (tipo_area, nombre_area) VALUES
('A01', 'Superintendencia de Tronadura'),
('A02', 'Superintendencia de Carguío y Transporte'),
('A03', 'Superintendencia de Chancado y Correas');

INSERT INTO Area_Operaciones (rut_ope, tipo_area) VALUES
('77.123.456-1', 'A01'),
('77.123.456-1', 'A02'),
('77.123.456-1', 'A03');


INSERT INTO Tipo_Area_Planificacion (tipo_area, nombre_area) VALUES
('P01', 'Departamento de Programación Minera'),
('P02', 'Departamento de Control de Producción'),
('P03', 'Departamento de Logística y Transporte');

INSERT INTO Area_Planificacion (rut_pla, tipo_area) VALUES
('77.123.457-0', 'P01'),
('77.123.457-0', 'P02'),
('77.123.457-0', 'P03');

INSERT INTO Tipo_Area_Personas (tipo_area, nombre_area) VALUES
('R01', 'Área de Reclutamiento y Selección'),
('R02', 'Área de Capacitación y Desarrollo'),
('R03', 'Área de Relaciones Laborales');

INSERT INTO Area_Personas (rut_pe, tipo_area) VALUES
('77.123.458-9', 'R01'),
('77.123.458-9', 'R02'),
('77.123.458-9', 'R03');


INSERT INTO Trabajador_Operaciones (rut, nombre, cargo) VALUES
('18.456.789-5', 'Diego Morales', 'Supervisor de Tronadura'),
('19.234.567-4', 'Camila Rojas', 'Ingeniera de Transporte'),
('17.345.678-2', 'José Fuentes', 'Operador de Correas'),
('16.789.345-9', 'Daniel Contreras', 'Técnico Mecánico'),
('15.876.234-6', 'Rocío Herrera', 'Operadora de Planta'),
('21.654.987-5', 'Rodrigo Muñoz', 'Analista de Operaciones');


INSERT INTO Trabaja (rut, rut_ope, tipo_area) VALUES
('18.456.789-5', '77.123.456-1', 'A01'),
('19.234.567-4', '77.123.456-1', 'A02'),
('17.345.678-2', '77.123.456-1', 'A03'),
('16.789.345-9', '77.123.456-1', 'A03'),
('15.876.234-6', '77.123.456-1', 'A02'),
('21.654.987-5', '77.123.456-1', 'A01');