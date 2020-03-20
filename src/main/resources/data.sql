/*USERS*/
INSERT INTO user(created_date, last_modified_date, email, first_name, last_name, gender, username, password)
VALUES
       (now(), now(),'andreivaino@live.ru', 'Andrei', 'Vaino', true, 'Andrew191', '$2y$12$VgM3WyBXVdULghpMG9HiyOZo.csQCugoHa4.1UNn5WUjBUvQQWvxa'),
        (now(), now(),'jack.oneill@gmail.ru', 'Jack', 'Oneill', true, 'Jack191', '$2y$12$VgM3WyBXVdULghpMG9HiyOZo.csQCugoHa4.1UNn5WUjBUvQQWvxa');
/*ROLES*/
INSERT INTO role(created_date, last_modified_date, name)
VALUES
(now(), now(), 'ROLE_USER'),
(now(), now(), 'ROLE_ADMIN');
/*USERS_ROLES*/
INSERT INTO users_roles(user_id, role_id)
VALUES
(1, 1),
(1, 2),
(2, 1);
/*CATEGORIES*/
INSERT INTO category(created_date, last_modified_date, name, description, user_id)
VALUES (now(), now(),'Programming', 'All about programming languages.', 1),
        (now(), now(),'Languages', 'Languages learning.', 2),
        (now(), now(),'Biology', 'All about biology.', 2),
        (now(), now(),'Technology', 'All about technology.', 1);
/*THEMES*/
INSERT INTO theme(created_date, last_modified_date, name, description, category_id)
VALUES (now(), now(),'Java', 'All about java.', 1),
        (now(), now(),'Python', 'All about python.', 1),
        (now(), now(),'Russian', 'All about russian language.', 2),
        (now(), now(),'Estonian', 'All about estonian language.', 2),
        (now(), now(),'Reproduction', 'reproduction study...', 3),
        (now(), now(),'Evolution', 'Theme about evolution.', 3),
        (now(), now(),'Robotics', 'All about Robotics.', 4),
        (now(), now(),'3D printing', 'All about 3D printing.', 4);
/*MATERIALS*/
INSERT INTO material(created_date, last_modified_date, name, description, theme_id)
VALUES (now(), now(),'JavaBasics', 'Java basics for beginners.', 1),
       (now(), now(),'PythonBasics', 'PythonBasics for beginners.', 2),
       (now(), now(),'Russian', 'All ab out russian language.', 3),
       (now(), now(),'Estonian', 'All about estonian language.', 4),
       (now(), now(),'Reproduction', 'reproduction study...', 5),
       (now(), now(),'Evolution', 'Theme about evolution.', 6),
       (now(), now(),'Robotics', 'All about Robotics.', 7),
       (now(), now(),'3D printing', 'All about 3D printing.', 8);
/*NOTES*/
INSERT INTO note(created_date, last_modified_date, name, content_text, material_id)
VALUES (now(), now(),'NoteAbout JavaBasics', 'Java basics for beginners.', 1),
       (now(), now(),'NoteAbout PythonBasics', 'PythonBasics for beginners.', 2),
       (now(), now(),'NoteAbout Russian', 'All ab out russian language.', 3),
       (now(), now(),'NoteAbout Estonian', 'All about estonian language.', 4),
       (now(), now(),'NoteAbout Reproduction', 'reproduction study...', 5),
       (now(), now(),'NoteAbout Evolution', 'Theme about evolution.', 6),
       (now(), now(),'NoteAbout Robotics', 'All about Robotics.', 7),
       (now(), now(),'NoteAbout 3D printing', 'All about 3D printing.', 8);
