CREATE TABLE "member" (
	"nickName"	varchar2(10)		NOT NULL,
	"email"	varchar2(20)		NOT NULL,
	"gender"	varchar2(10)		NULL,
	"age"	varchar2(10)		NULL
);

CREATE TABLE "mypage_recipe" (
	"nickName"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL
);

CREATE TABLE "recipe" (
	"recipeNum"	varchar2(10)		NOT NULL,
	"recipeCode"	varchar2(10)	DEFAULT CH001	NOT NULL,
	"recipeName"	varchar2(30)		NOT NULL,
	"cockAlc"	varchar2(10)		NOT NULL,
	"cockBase"	varchar2(10)		NOT NULL,
	"cockTech"	varchar2(10)		NOT NULL,
	"cockInfo"	varchar2(200)		NOT NULL,
	"cockRec"	varchar2(200)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

COMMENT ON COLUMN "recipe"."recipeNum" IS 'ex) C001';

CREATE TABLE "board" (
	"boardNum"	varchar2(10)		NOT NULL,
	"boardTitle"	varchar2(30)		NOT NULL,
	"boardCate"	varchar2(10)		NOT NULL,
	"boardDate"	date	DEFAULT sysdate	NOT NULL,
	"boardGood"	number	DEFAULT 0	NOT NULL,
	"boardText"	varchar2(999)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

CREATE TABLE "boardReple" (
	"repleNo"	varchar2(10)		NOT NULL,
	"repleCon"	varchar2(100)		NOT NULL,
	"repleTime"	date	DEFAULT sysdate	NOT NULL,
	"boardNum"	varchar2(10)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

COMMENT ON COLUMN "boardReple"."repleNo" IS 'ex) R001';

CREATE TABLE "TB_IMG" (
	"Key"	varchar2(10)		NOT NULL,
	"boardNum"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"imgPath"	varchar2(100)		NOT NULL,
	"imgDate"	date	DEFAULT sysdate	NOT NULL
);

COMMENT ON COLUMN "TB_IMG"."Key" IS 'ex) IMG001';

COMMENT ON COLUMN "TB_IMG"."imgPath" IS '경로값을 저장';

CREATE TABLE "recipeReple" (
	"repleNo"	varchar2(10)		NOT NULL,
	"repleCon"	varchar2(100)		NOT NULL,
	"repleTime"	date	DEFAULT sysdate	NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"nickName"	varchar2(10)		NOT NULL
);

COMMENT ON COLUMN "recipeReple"."repleNo" IS 'ex) R001';

CREATE TABLE "bookMark" (
	"nickName"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL
);

CREATE TABLE "INGREMENT" (
	"Key"	varchar2(10)		NOT NULL,
	"recipeNum"	varchar2(10)		NOT NULL,
	"ingreName"	varchar2(20)		NOT NULL,
	"volume"	varchar2(50)		NOT NULL
);

COMMENT ON COLUMN "INGREMENT"."Key" IS 'ex) I001';

ALTER TABLE "member" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"nickName"
);

ALTER TABLE "mypage_recipe" ADD CONSTRAINT "PK_MYPAGE_RECIPE" PRIMARY KEY (
	"nickName",
	"recipeNum"
);

ALTER TABLE "recipe" ADD CONSTRAINT "PK_RECIPE" PRIMARY KEY (
	"recipeNum"
);

ALTER TABLE "board" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"boardNum"
);

ALTER TABLE "boardReple" ADD CONSTRAINT "PK_BOARDREPLE" PRIMARY KEY (
	"repleNo"
);

ALTER TABLE "TB_IMG" ADD CONSTRAINT "PK_TB_IMG" PRIMARY KEY (
	"Key"
);

ALTER TABLE "recipeReple" ADD CONSTRAINT "PK_RECIPEREPLE" PRIMARY KEY (
	"repleNo"
);

ALTER TABLE "bookMark" ADD CONSTRAINT "PK_BOOKMARK" PRIMARY KEY (
	"nickName",
	"recipeNum"
);

ALTER TABLE "INGREMENT" ADD CONSTRAINT "PK_INGREMENT" PRIMARY KEY (
	"Key"
);

ALTER TABLE "mypage_recipe" ADD CONSTRAINT "FK_member_TO_mypage_recipe_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "mypage_recipe" ADD CONSTRAINT "FK_recipe_TO_mypage_recipe_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "recipe" (
	"recipeNum"
);

ALTER TABLE "recipe" ADD CONSTRAINT "FK_member_TO_recipe_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "board" ADD CONSTRAINT "FK_member_TO_board_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "boardReple" ADD CONSTRAINT "FK_board_TO_boardReple_1" FOREIGN KEY (
	"boardNum"
)
REFERENCES "board" (
	"boardNum"
);

ALTER TABLE "boardReple" ADD CONSTRAINT "FK_member_TO_boardReple_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "recipeReple" ADD CONSTRAINT "FK_recipe_TO_recipeReple_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "recipe" (
	"recipeNum"
);

ALTER TABLE "recipeReple" ADD CONSTRAINT "FK_member_TO_recipeReple_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "bookMark" ADD CONSTRAINT "FK_member_TO_bookMark_1" FOREIGN KEY (
	"nickName"
)
REFERENCES "member" (
	"nickName"
);

ALTER TABLE "bookMark" ADD CONSTRAINT "FK_recipe_TO_bookMark_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "recipe" (
	"recipeNum"
);

ALTER TABLE "INGREMENT" ADD CONSTRAINT "FK_recipe_TO_INGREMENT_1" FOREIGN KEY (
	"recipeNum"
)
REFERENCES "recipe" (
	"recipeNum"
);

