INSERT INTO user (user_id, email, user_name, password_hash, provider, created_by, created_date) VALUES
 ( 1, 'admin@mail.com', 'admin', '$2a$04$ItDBvcn41QncTbDL6Q2eNOHVQf5US/bdwQj/aczc2AGoGoEaX.ogi', 'local', 'system', now());

INSERT INTO user (user_id, email, user_name, password_hash, provider, created_by, created_date) VALUES
 ( 2, 'user1@mail.com', 'user1', '$2a$04$Qao0KqDim7VubPHV9x.oj.awaz0ArpPNlU7l0q18ZdsBXJn82dKPG', 'local', 'system', now());

INSERT INTO user (user_id, email, user_name, password_hash, provider, created_by, created_date) VALUES
 ( 3, 'namhkle@mail.com', 'nam', 'manchester', 'local', 'system', now());

INSERT INTO authority (name) VALUES
 ('ROLE_ADMIN'), ('ROLE_USER' );

INSERT INTO user_authority (user_id,authority_name) VALUES
 ( 1, 'ROLE_ADMIN'), (1, 'ROLE_USER'), (2, 'ROLE_USER');

INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( 'My Latest Song'
 ,'<p>"You find so many people are far too hasty
But you are simply tasty.

I like the way you.
I like the way you.
I like the way you.

You find so many people are far too hasty
But you are simply tasty


I love the way you wear your hair,
Spreading your style everywhere.
You''re like a style fountain.
Enough zazz for a whole mountain.

You find so many people are far too hasty
But you are simply tasty


You''re the perfect girl.
Leaving me in such a whirl.

You find so many people are far too hasty
But you are simply tasty


,and,
and too,
Are the qualities of you

You find so many people are far too hasty
But you are simply tasty"</p>'
 , '1', 'Nam Le', now()-1, 'Nam Le', now()-1);

 INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( 'About Jazz'
 , '<p>"As jazz spread around the world, it drew on national, regional, and local musical cultures, which gave rise to different styles. New Orleans jazz began in the early 1910s, combining earlier brass-band marches, French quadrilles, biguine, ragtime and blues with collective polyphonic improvisation. In the 1930s, arranged dance-oriented swing big bands, Kansas City jazz, a hard-swinging, bluesy, improvisational style and gypsy jazz (a style that emphasized musette waltzes) were the prominent styles. Bebop emerged in the 1940s, shifting jazz from danceable popular music toward a more challenging "musician''s music" which was played at faster tempos and used more chord-based improvisation. Cool jazz developed near the end of the 1940s, introducing calmer, smoother sounds and long, linear melodic lines."</p>'
 , '1', 'Nam Le', now()-2, 'Nam Le', now()-2);

INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( 'Origin of Blues Music'
 , '<p>"The story of the Blues began in northwestern Mississippi in the late 1800’s. It was initially a folk music popular among former slaves living in the Mississippi Delta, the flat plain between the Yazoo and Mississippi rivers. With the Great Migration of black workers that began around that time the Blues spread around the south and the rest of the United States.
The Blues was performed in a variety of settings and styles: musicians often played in ‘tent shows’ while accompanying travelling doctors, musical companies, comedians, magicians, and even circuses. Ballads would be played, as well as ragtime, Gospel songs, and folk tunes. From the Atlantic coast all the way down to the Gulf-and across time-the melancholy flatted notes of the Blues reached many. The typical Blues scale, using flattened notes, was taken up enthusiastically by New Orleans’ Jazz musicians, and it became a cornerstone of this ‘citified cousin’ of country Blues in the early years of the century."</p>'
 , '1', 'Nam Le', now()-3, 'Nam Le', now()-3);

INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( 'Section 1.10.33 of "de Finibus Bonorum et Malorum"'
 , '<p>"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."</p>'
 , '1', 'Nam Le', now()-4, 'Nam Le', now()-4);

INSERT INTO post (title, body, user_id, created_by, created_date, last_modified_by, last_modified_date) VALUES
 ( '1914 translation by H. Rackham'
 , '<p>"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."</p>'
 , '1', 'Nam Le', now()-5, 'Nam Le', now()-5);

INSERT INTO comment (body, created_date, last_modified_date, post_id, user_id) VALUES
( 'Nunc et enim ut metus ultricies porta. Praesent cursus sit amet sem a ultrices. In sollicitudin vestibulum eros eu pretium.'
, now()-5, now()-5, 1, 1);

INSERT INTO comment (body, created_date, last_modified_date, post_id, user_id) VALUES
( 'hF-E focuses attention on the message itself, in both form and content. Such translations then would be concerned with such correspondences as poetry to poetry.'
, now()-5, now()-5, 1, 2);
