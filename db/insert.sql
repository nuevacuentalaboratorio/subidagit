INSERT INTO folders (nombre, created_at, updated_at) values ('home',now(),now());

INSERT INTO rols (nombre, created_at, updated_at) values ('Super User',now(),now());
INSERT INTO rols (nombre, created_at, updated_at) values ('Account Manager',now(),now());
INSERT INTO rols (nombre, created_at, updated_at) values ('Customer',now(),now());

INSERT INTO users (email, encrypted_password, sign_in_count, created_at, updated_at, rol_id) values ('admin@sicip.com','$2a$10$YznYmlZDiVVSe3bMVxXDT.XyiYafBE8GP6EuPNPV.eE9ZOlBnCz3.', 0, now(), now(), 1);
 
INSERT INTO operacions (nombre, created_at, updated_at) values ('read',now(),now());
INSERT INTO operacions (nombre, created_at, updated_at) values ('create',now(),now());
INSERT INTO operacions (nombre, created_at, updated_at) values ('update',now(),now());
INSERT INTO operacions (nombre, created_at, updated_at) values ('destroy',now(),now());

INSERT INTO seccions values (1, 'Archivo', '/archivos', now(),now());
INSERT INTO seccions values (2, 'Archivofolder', '/archivofolders', now(),now());
INSERT INTO seccions values (3, 'Channel', '/channels', now(),now());
INSERT INTO seccions values (4, 'Documento', '/documentos', now(),now());
INSERT INTO seccions values (5, 'Folder', '/folders/1', now(),now());
INSERT INTO seccions values (6, 'Operacion', '/operacions', now(),now());
INSERT INTO seccions values (7, 'Payment', '/payments', now(),now());
INSERT INTO seccions values (8, 'Permiso', '/permisos', now(),now());
INSERT INTO seccions values (9, 'Product', '/products', now(),now());
INSERT INTO seccions values (10, 'Rol', '/rols', now(),now());
INSERT INTO seccions values (11, 'Seccion', '/seccions', now(),now());
INSERT INTO seccions values (12, 'Showpin', '/showpins', now(),now());
INSERT INTO seccions values (13, 'Showroom', '/showrooms', now(),now());
INSERT INTO seccions values (14, 'Sku', '/skus', now(),now());
INSERT INTO seccions values (15, 'Skugraph', '/skugraphs', now(),now());
INSERT INTO seccions values (16, 'Team', '/teams', now(),now());
INSERT INTO seccions values (17, 'User', '/users', now(),now());
INSERT INTO seccions values (18, 'Variation', '/variations', now(),now());
INSERT INTO seccions values (19, 'Ventaunidad', '/ventaunidads', now(),now());
INSERT INTO seccions values (20, 'Dashboard', '/dashboards/dashboard_1', now(),now());
INSERT INTO seccions values (21, 'Brandteam', '/users', now(),now());

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 2, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 2, 3);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 3, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 3, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 3, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 3, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 4, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 4, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 4, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 4, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 5, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 5, 2);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 7, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 7, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 7, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 7, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 9, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 9, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 9, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 9, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 12, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 12, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 12, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 13, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 13, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 13, 3);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 14, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 14, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 14, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 15, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 15, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 15, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 15, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 16, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 16, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 16, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 16, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 18, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 18, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 18, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 19, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 19, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 19, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 19, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 20, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 21, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 21, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 21, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 1, 21, 4);




INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 2, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 2, 3);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 3, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 3, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 3, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 3, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 4, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 4, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 4, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 4, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 5, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 5, 2);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 7, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 7, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 7, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 7, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 9, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 9, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 9, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 9, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 12, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 12, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 12, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 13, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 13, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 13, 3);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 14, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 14, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 14, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 15, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 15, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 15, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 15, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 16, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 16, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 16, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 16, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 18, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 18, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 18, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 19, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 19, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 19, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 19, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 20, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 21, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 21, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 21, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 2, 21, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 2, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 3, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 4, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 4, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 4, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 4, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 5, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 9, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 9, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 9, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 9, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 12, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 13, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 14, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 14, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 14, 4);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 16, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 20, 1);

INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 21, 1);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 21, 2);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 21, 3);
INSERT INTO permisos (created_at, updated_at, rol_id, seccion_id, operacion_id) values (now(),now(), 3, 21, 4);