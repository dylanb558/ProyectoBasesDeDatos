--SP:


CREATE OR REPLACE PROCEDURE registrar_trabajador_operaciones(
    p_rut TEXT,
    p_nombre TEXT,
    p_cargo TEXT,
    p_tipo_area TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
       IF NOT EXISTS (SELECT 1 FROM Area_Operaciones WHERE tipo_area = p_tipo_area) THEN
        RAISE NOTICE 'El área % no existe en la Gerencia de Operaciones.', p_tipo_area;
        RETURN;
    END IF;

    
    INSERT INTO Trabajador_Operaciones (rut, nombre, cargo)
    VALUES (p_rut, p_nombre, p_cargo);

        INSERT INTO Trabaja (rut, rut_ope, tipo_area)
    VALUES (p_rut, '77.123.456-1', p_tipo_area);

    RAISE NOTICE 'Trabajador % registrado y asignado al área % correctamente.', p_nombre, p_tipo_area;
END;
$$;


--Trigger:

CREATE OR REPLACE FUNCTION bloquear_eliminacion_trabajador()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM Trabaja WHERE rut = OLD.rut) THEN
        RAISE EXCEPTION 'No se puede eliminar al trabajador %, tiene asignaciones activas.', OLD.nombre;
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_bloquear_eliminacion_trabajador
BEFORE DELETE ON Trabajador_Operaciones
FOR EACH ROW
EXECUTE FUNCTION bloquear_eliminacion_trabajador();





--Pruebas SP

CALL registrar_trabajador_operaciones(
    '22.345.678-1',
    'Gonzalo Vargas',
    'Operador de Chancado',
    'A03'
);

-- Prueba Trigger

DELETE FROM Trabajador_Operaciones WHERE rut = '18.456.789-5'