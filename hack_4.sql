INSERT INTO countries (name) VALUES
  ('Germany'),
  ('Spain'),
  ('Russia'),
  ('Peru'),
  ('Mexico');

INSERT INTO priorities (type_name) VALUES
  ('High'),
  ('Medium'),
  ('Low');

INSERT INTO contact_request (country_id, priority_id, name, detail, physical_address) VALUES
  (1, 1, 'Juan Pérez', 'Solicitud de información', '123 Calle Principal, Buenos Aires'),
  (2, 2, 'María González', 'Consulta sobre productos', 'Carrera 45 #67-89, Bogotá'),
  (3, 3, 'Pedro Ramírez', 'Reclamo', 'Avenida Siempre Viva 742, Santiago');


DELETE FROM users
WHERE id = (
  SELECT id 
  FROM users
  ORDER BY id DESC
  LIMIT 1
);

UPDATE users
SET name = 'Nuevo Nombre', email = 'nuevo@email.com'
WHERE id = (SELECT id FROM users ORDER BY id DESC LIMIT 1);