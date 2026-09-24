-- ============================================================
-- TOUCHE PAS AU KLAXON - Script d'alimentation (jeu d'essais)
-- ============================================================
-- Mots de passe : hachés avec password_hash() de PHP (bcrypt)
-- Mot de passe par défaut pour tous : "password123"
-- Compte admin : admin@klaxon.fr / admin123
-- ============================================================

USE touche_pas_au_klaxon;

-- ------------------------------------------------------------
-- Insertion des agences (données fournies dans agences.txt)
-- ------------------------------------------------------------
INSERT INTO agence (ville) VALUES
    ('Paris'),
    ('Lyon'),
    ('Marseille'),
    ('Toulouse'),
    ('Nice'),
    ('Nantes'),
    ('Strasbourg'),
    ('Montpellier'),
    ('Bordeaux'),
    ('Lille'),
    ('Rennes'),
    ('Reims');

-- ------------------------------------------------------------
-- Insertion du compte administrateur
-- Email : admin@klaxon.fr | Mot de passe : admin123
-- Hash bcrypt généré via password_hash('admin123', PASSWORD_BCRYPT)
-- ------------------------------------------------------------
INSERT INTO utilisateur (nom, prenom, email, mot_de_passe, telephone, role) VALUES
    ('Admin', 'Super', 'admin@klaxon.fr',
     '$2y$12$eswp3l9HJ6AaByMWrUvNSeivbS/OJfbZvVgb2zRZKql6uZLxFGAFq',
     '0600000000', 'administrateur');

-- ------------------------------------------------------------
-- Insertion des utilisateurs (données fournies dans users.txt)
-- Mot de passe par défaut : password123
-- Hash bcrypt généré via password_hash('password123', PASSWORD_BCRYPT)
-- ------------------------------------------------------------
INSERT INTO utilisateur (nom, prenom, email, mot_de_passe, telephone, role) VALUES
    ('Martin',    'Alexandre', 'alexandre.martin@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0612345678', 'utilisateur'),
    ('Dubois',    'Sophie',    'sophie.dubois@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0698765432', 'utilisateur'),
    ('Bernard',   'Julien',    'julien.bernard@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0622446688', 'utilisateur'),
    ('Moreau',    'Camille',   'camille.moreau@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0611223344', 'utilisateur'),
    ('Lefèvre',   'Lucie',     'lucie.lefevre@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0777889900', 'utilisateur'),
    ('Leroy',     'Thomas',    'thomas.leroy@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0655443322', 'utilisateur'),
    ('Roux',      'Chloé',     'chloe.roux@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0633221199', 'utilisateur'),
    ('Petit',     'Maxime',    'maxime.petit@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0766778899', 'utilisateur'),
    ('Garnier',   'Laura',     'laura.garnier@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0688776655', 'utilisateur'),
    ('Dupuis',    'Antoine',   'antoine.dupuis@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0744556677', 'utilisateur'),
    ('Lefebvre',  'Emma',      'emma.lefebvre@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0699887766', 'utilisateur'),
    ('Fontaine',  'Louis',     'louis.fontaine@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0655667788', 'utilisateur'),
    ('Chevalier', 'Clara',     'clara.chevalier@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0788990011', 'utilisateur'),
    ('Robin',     'Nicolas',   'nicolas.robin@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0644332211', 'utilisateur'),
    ('Gauthier',  'Marine',    'marine.gauthier@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0677889922', 'utilisateur'),
    ('Fournier',  'Pierre',    'pierre.fournier@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0722334455', 'utilisateur'),
    ('Girard',    'Sarah',     'sarah.girard@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0688665544', 'utilisateur'),
    ('Lambert',   'Hugo',      'hugo.lambert@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0611223366', 'utilisateur'),
    ('Masson',    'Julie',     'julie.masson@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0733445566', 'utilisateur'),
    ('Henry',     'Arthur',    'arthur.henry@email.fr',
     '$2y$12$GZZwDe.AYypBiDQ0AvBQUu7ketJjfIReywMbihHP6T2g9pRxM16Xe',
     '0666554433', 'utilisateur');

-- ------------------------------------------------------------
-- Insertion de trajets de test (jeu d'essais)
-- Trajets futurs avec des places disponibles variées
-- Dates relatives à la date d'import : le jeu d'essais reste toujours à venir
-- ------------------------------------------------------------
INSERT INTO trajet (id_utilisateur, id_agence_depart, id_agence_arrivee, date_heure_depart, date_heure_arrivee, nb_places_total, nb_places_disponibles) VALUES
    -- Alexandre Martin : Paris → Lyon
    (2, 1, 2, TIMESTAMP(CURDATE() + INTERVAL 7 DAY, '08:00:00'), TIMESTAMP(CURDATE() + INTERVAL 7 DAY, '12:00:00'), 4, 3),
    -- Sophie Dubois : Marseille → Toulouse
    (3, 3, 4, TIMESTAMP(CURDATE() + INTERVAL 9 DAY, '09:30:00'), TIMESTAMP(CURDATE() + INTERVAL 9 DAY, '13:00:00'), 3, 2),
    -- Julien Bernard : Lyon → Nice
    (4, 2, 5, TIMESTAMP(CURDATE() + INTERVAL 11 DAY, '07:00:00'), TIMESTAMP(CURDATE() + INTERVAL 11 DAY, '11:30:00'), 5, 4),
    -- Camille Moreau : Nantes → Bordeaux
    (5, 6, 9, TIMESTAMP(CURDATE() + INTERVAL 12 DAY, '10:00:00'), TIMESTAMP(CURDATE() + INTERVAL 12 DAY, '13:30:00'), 3, 1),
    -- Thomas Leroy : Lille → Paris
    (7, 10, 1, TIMESTAMP(CURDATE() + INTERVAL 13 DAY, '06:30:00'), TIMESTAMP(CURDATE() + INTERVAL 13 DAY, '10:00:00'), 4, 4),
    -- Chloé Roux : Strasbourg → Reims
    (8, 7, 12, TIMESTAMP(CURDATE() + INTERVAL 15 DAY, '08:00:00'), TIMESTAMP(CURDATE() + INTERVAL 15 DAY, '12:00:00'), 2, 2),
    -- Laura Garnier : Rennes → Nantes
    (10, 11, 6, TIMESTAMP(CURDATE() + INTERVAL 17 DAY, '14:00:00'), TIMESTAMP(CURDATE() + INTERVAL 17 DAY, '15:30:00'), 4, 3),
    -- Nicolas Robin : Bordeaux → Montpellier
    (15, 9, 8, TIMESTAMP(CURDATE() + INTERVAL 19 DAY, '07:30:00'), TIMESTAMP(CURDATE() + INTERVAL 19 DAY, '13:00:00'), 3, 0),
    -- Marine Gauthier : Paris → Strasbourg
    (16, 1, 7, TIMESTAMP(CURDATE() + INTERVAL 22 DAY, '09:00:00'), TIMESTAMP(CURDATE() + INTERVAL 22 DAY, '14:00:00'), 5, 5),
    -- Hugo Lambert : Toulouse → Lyon
    (19, 4, 2, TIMESTAMP(CURDATE() + INTERVAL 25 DAY, '11:00:00'), TIMESTAMP(CURDATE() + INTERVAL 25 DAY, '15:30:00'), 4, 2);