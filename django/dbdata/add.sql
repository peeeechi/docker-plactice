insert into app_area (name, create_date) values ('清澄白河', now());
insert into app_area (name, create_date) values ('神保町', now());
insert into app_area (name, create_date) values ('代々木公園', now());
insert into app_cafe (name, memo, website, image_path, create_date, area_id) values ('ブルーボトルコーヒー', 'カフェモカはここが一番美味しい。', 'https://bluebottlecoffee.jp/', 'bluebottlecoffee_IMG.jpg', now(), '1');
insert into app_cafe (name, memo, website, image_path, create_date, area_id) values ('iki ESPRESSO', 'オセアニアンスタイルのカフェ。フードもコーヒーも美味しい。', 'https://www.ikiespresso.com/', 'ikiespresso_IMG.jpg', now(), '1');
insert into app_cafe (name, memo, website, image_path, create_date, area_id) values ('GLITCH COFFEE', 'コーヒーが好きになったきっかけのカフェ。一番好きです。', 'https://glitchcoffee.com/', 'glitchcoffee_IMG.jpg', now(), '2');
insert into app_cafe (name, memo, website, image_path, create_date, area_id) values ('DIXANS', 'とてもオシャレなカフェ。デザートが絶品です。', 'http://www.dixans.jp/', 'dixans_IMG.jpg', now(), '2');
insert into app_cafe (name, memo, website, image_path, create_date, area_id) values ('Fuglen Tokyo', 'コーヒーがとても美味しいです。代々木公園で遊んだ時は必ず寄ります。', 'https://fuglencoffee.jp/', 'fuglencoffee_IMG.jpg', now(), '3');
commit;