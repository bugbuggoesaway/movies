create database movies_db character set utf8mb4 collate utf8mb4_bin;
use movies_db;

create table movies_tab
(
    id           int primary key auto_increment,
    movie_id     int          not null,
    name         varchar(255) not null,
    chinese_name varchar(255) not null,
    other_names  varchar(255) not null,
    cover_url    varchar(255) not null,
    year         int          not null,
    country      varchar(32)  not null,
    tags         varchar(255) not null,
    director     varchar(255) not null,
    actors       varchar(255) not null,
    summary      varchar(255) not null,
    rating       int          not null,
    num_raters   int          not null
);

insert into movies_tab(movie_id, name, chinese_name, other_names, cover_url, `year`, country, tags, director, actors,
                       summary, rating, num_raters)
values (1292052, 'The Shawshank Redemption', '肖申克的救赎', '月黑高飞(港) / 刺激1995(台)',
        'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg', 1994, '美国', '犯罪 剧情',
        '弗兰克·德拉邦特 Frank Darabont', '蒂姆·罗宾斯 Tim Robbins /...', '希望让人自由。', 97, 2599800),
       (1291546, '再见，我的妾 / Farewell My Concubine', '霸王别姬', 'null',
        'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg', 1993, '中国大陆 中国香港', '剧情 爱情 同性',
        '陈凯歌 Kaige Chen', '张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...', '风华绝代。', 96, 1930738),
       (1292720, 'Forrest Gump', '阿甘正传', '福雷斯特·冈普',
        'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2372307693.jpg', 1994, '美国', '剧情 爱情',
        '罗伯特·泽米吉斯 Robert Zemeckis', '汤姆·汉克斯 Tom Hanks / ...', '一部美国近现代史。', 95, 1953888),
       (1292722, 'Titanic', '泰坦尼克号', '铁达尼号(港 / 台)',
        'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg', 1997, '美国 墨西哥 澳大利亚 加拿大',
        '剧情 爱情 灾难', '詹姆斯·卡梅隆 James Cameron', '莱昂纳多·迪卡普里奥 Leonardo...', '失去的才是永恒的。', 94, 1914947),
       (1295644, 'Léon', '这个杀手不太冷', '终极追杀令(台) / 杀手莱昂',
        'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg', 1994, '法国 美国', '剧情 动作 犯罪',
        '吕克·贝松 Luc Besson', '让·雷诺 Jean Reno / 娜塔莉·波特曼 ...', '怪蜀黍和小萝莉不得不说的故事。', 94, 2107558);