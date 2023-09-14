CREATE TABLE "MEMBER" (
	"nickName"	varchar2(10)		NOT NULL,
	"email"	varchar2(20)		UNIQUE NOT NULL,
	"gender"	varchar2(10)		NULL,
	"age"	varchar2(10)		NULL
);

CREATE TABLE "MEMBER_LIKE" (
	"nickName"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL
);

CREATE TABLE "RECIPE" (
	"recipeNum"	varchar2(10)		NOT NULL,
	"recipeCode"	varchar2(10)	DEFAULT 'CH001'	NOT NULL,
	"recipeName"	varchar2(30)		NOT NULL,
	"cockAlc"	varchar2(10)		NOT NULL,
	"cockBase"	varchar2(10)		NOT NULL,
	"cockTech"	varchar2(10)		NOT NULL,
	"cockInfo"	varchar2(200)		NOT NULL,
	"cockRec"	varchar2(200)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

CREATE TABLE "BOARD" (
	"boardNum"	varchar2(10)		NOT NULL,
	"boardTitle"	varchar2(30)		NOT NULL,
	"boardCate"	varchar2(10)		NOT NULL,
	"boardDate"	date	DEFAULT sysdate	NOT NULL,
	"boardGood"	number	DEFAULT 0	NOT NULL,
	"boardText"	varchar2(999)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

CREATE TABLE "BOARD_REPLE" (
	"repleNo"	varchar2(10)		NOT NULL,
	"repleCon"	varchar2(100)		NOT NULL,
	"repleTime"	date	DEFAULT sysdate	NOT NULL,
	"boardNum"	varchar2(10)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

CREATE TABLE "TB_IMG" (
	"imgNum"	varchar2(10)		NOT NULL,
	"boardNum"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"imgPath"	varchar2(100)		NOT NULL,
	"imgDate"	date	DEFAULT sysdate	NOT NULL
);

CREATE TABLE "RECIPE_REPLE" (
	"repleNo"	varchar2(10)		NOT NULL,
	"repleCon"	varchar2(100)		NOT NULL,
	"repleTime"	date	DEFAULT sysdate	NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

CREATE TABLE "BOOKMARK" (
	"nickName"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL
);

CREATE TABLE "INGREMENT" (
	"ingreNum"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"ingreName"	varchar2(20)		NOT NULL,
	"volume"	varchar2(50)		NOT NULL
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"nickName"
);

ALTER TABLE "MEMBER_LIKE" ADD CONSTRAINT "PK_LIKE" PRIMARY KEY (
	"nickName",
	"recipeNum"
);

ALTER TABLE "RECIPE" ADD CONSTRAINT "PK_RECIPE" PRIMARY KEY (
	"recipeNum"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"boardNum"
);

ALTER TABLE "BOARD_REPLE" ADD CONSTRAINT "PK_BOARD_REPLE" PRIMARY KEY (
	"repleNo"
);

ALTER TABLE "TB_IMG" ADD CONSTRAINT "PK_TB_IMG" PRIMARY KEY (
	"imgNum"
);

ALTER TABLE "RECIPE_REPLE" ADD CONSTRAINT "PK_RECIPE_REPLE" PRIMARY KEY (
	"repleNo"
);

ALTER TABLE "BOOKMARK" ADD CONSTRAINT "PK_BOOKMARK" PRIMARY KEY (
	"nickName",
	"recipeNum"
);

ALTER TABLE "INGREMENT" ADD CONSTRAINT "PK_INGREMENT" PRIMARY KEY (
	"ingreNum"
);

ALTER TABLE "MEMBER_LIKE" ADD CONSTRAINT "FK_MEMBER_TO_LIKE_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "MEMBER_LIKE" ADD CONSTRAINT "FK_RECIPE_TO_LIKE_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "RECIPE" (
	"recipeNum"
)ON DELETE CASCADE;

ALTER TABLE "RECIPE" ADD CONSTRAINT "FK_MEMBER_TO_RECIPE_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "BOARD" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "BOARD_REPLE" ADD CONSTRAINT "FK_BOARD_TO_BOARD_REPLE_1" FOREIGN KEY (
	"boardNum"
)
REFERENCES "BOARD" (
	"boardNum"
) ON DELETE CASCADE;

ALTER TABLE "BOARD_REPLE" ADD CONSTRAINT "FK_MEMBER_TO_BOARD_REPLE_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "RECIPE_REPLE" ADD CONSTRAINT "FK_RECIPE_TO_RECIPE_REPLE_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "RECIPE" (
	"recipeNum"
) ON DELETE CASCADE;

ALTER TABLE "RECIPE_REPLE" ADD CONSTRAINT "FK_MEMBER_TO_RECIPE_REPLE_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "BOOKMARK" ADD CONSTRAINT "FK_MEMBER_TO_BOOKMARK_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "MEMBER" (
	"nickName"
) ON DELETE CASCADE;

ALTER TABLE "BOOKMARK" ADD CONSTRAINT "FK_RECIPE_TO_BOOKMARK_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "RECIPE" (
	"recipeNum"
) ON DELETE CASCADE;

ALTER TABLE "INGREMENT" ADD CONSTRAINT "FK_RECIPE_TO_INGREMENT_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "RECIPE" (
	"recipeNum"
) ON DELETE CASCADE;

commit;

select*from TB_IMG where "recipeNum" is null;
delete ;
---------------------------------------
-- 테스트 값
-- MEMBER
INSERT INTO MEMBER VALUES('admin', 'admin','남','30대');
commit;


-- BOARD
CREATE SEQUENCE BOARD_SEQ
START WITH 1
INCREMENT BY 1;

INSERT INTO BOARD VALUES('B'||BOARD_SEQ.nextval, 'test', 'test', sysdate, 0, 'test', 'admin');


-- RECIPE
-- recipeNum
CREATE SEQUENCE RECIPE_SEQ
START WITH 1
INCREMENT BY 1;

INSERT INTO RECIPE VALUES('R'||RECIPE_SEQ.nextval, 'CH002', 'test',  'test',  'test',  'test',  'test',  'test', 'admin');

-- BOARD_REPLE
--repleNo

CREATE SEQUENCE REPLE_SEQ
START WITH 1
INCREMENT BY 1;

INSERT INTO BOARD_REPLE VALUES('RE'||REPLE_SEQ.nextval, 'test', sysdate, 'B1', 'admin');


-- BOOKMARK
INSERT INTO BOOKMARK VALUES('admin', 'R1');

-- INGREMENT
-- ingreNum

CREATE SEQUENCE INGREMENT_SEQ
START WITH 1
INCREMENT BY 1;

INSERT INTO INGREMENT VALUES('IN'||INGREMENT_SEQ.nextval, 'R1', 'test', 'test');

-- MEMBER_LIKE
INSERT INTO MEMBER_LIKE VALUES('admin', 'R1');

-- RECIPE_REPLE
INSERT INTO RECIPE_REPLE VALUES('RE'||REPLE_SEQ.nextval, 'test', sysdate, 'R1', 'admin');


-- TB_IMG
CREATE SEQUENCE IMG_SEQ
START WITH 500
INCREMENT BY 1;

INSERT INTO TB_IMG VALUES('IMG'||IMG_SEQ.nextval, null, 'R1', 'test', sysdate);

