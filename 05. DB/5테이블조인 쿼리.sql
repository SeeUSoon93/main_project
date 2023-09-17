select * from INGREDIENT WHERE "recipeNum" = 'R1' ORDER BY 'ingreNum';
select * from TB_IMG;
select "cockRec" from RECIPE;
select * from RECIPE WHERE "recipeCode" = 'CH002';
select * from MEMBER_LIKE;
select * from BOOKMARK;
select * from MEMBER;
select distinct "ingreName" from INGREDIENT;
select * from INGREDIENT ;

DELETE BOOKMARK WHERE "nickName" ='����';

DELETE RECIPE WHERE "nickName" ='����';

CREATE SEQUENCE INGREDIENT_SEQ
START WITH 500
INCREMENT BY 1;
commit;



        INSERT INTO RECIPE VALUES('R'||RECIPE_SEQ.nextval, 'CH002', 'test',  12,  'test',  'test',  'test', 'admin');
        SELECT * FROM RECIPE WHERE "nickName" = '����' AND "recipeName" = '���ݶ�' AND "recipeCode" = 'CH002' AND "recipeNum" = 'R205';

        
INSERT INTO MEMBER_LIKE VALUES('����', 'R1');
commit;
        
		SELECT A."recipeNum", COUNT(B."recipeNum") as like_count
		FROM RECIPE A
		LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
		GROUP BY A."recipeNum";
		
        
        SELECT A."recipeNum", COUNT(B."recipeNum") as BOOKMARK_count
		FROM RECIPE A
		LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
		GROUP BY A."recipeNum"
		ORDER BY "recipeNum";


SELECT DISTINCT R."recipeNum", R."recipeCode", R."recipeName", R."cockAlc", R."cockBase", R."cockInfo", R."cockRec", R."nickName", I."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT
FROM RECIPE R,
     TB_IMG I,
     (SELECT A."recipeNum", COUNT(B."recipeNum") as like_count
      FROM RECIPE A
      LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
	  GROUP BY A."recipeNum") C,
     (SELECT A."recipeNum", COUNT(B."recipeNum") as BOOKMARK_COUNT
	  FROM RECIPE A
	  LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
	  GROUP BY A."recipeNum") D
WHERE A."recipeNum" = B."recipeNum"
  AND B."recipeNum" = C."recipeNum"
  AND C."recipeNum" = D."recipeNum"
ORDER BY A."recipeNum";

SELECT DISTINCT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName", B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT
FROM RECIPE a
JOIN TB_IMG b ON A."recipeNum" = B."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") as like_count
    FROM RECIPE A
    LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) C ON A."recipeNum" = C."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") as BOOKMARK_COUNT
    FROM RECIPE A
    LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) D ON A."recipeNum" = D."recipeNum";



-- ���������̺�, �̹������̺�, ���ƿ� ī��Ʈ �ζ��� ���̺�, �ϸ�ũ ī��Ʈ �ζ��� ���̺�, ��� ī��Ʈ �ζ��� ���̺�
SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
       B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
FROM RECIPE A
LEFT JOIN (
    SELECT "recipeNum", MIN("imgPath") AS "imgPath"
    FROM TB_IMG
    GROUP BY "recipeNum"
) B ON A."recipeNum" = B."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS like_count
    FROM RECIPE A
    LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) C ON A."recipeNum" = C."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS BOOKMARK_COUNT
    FROM RECIPE A
    LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) D ON A."recipeNum" = D."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS REPLE_COUNT
    FROM RECIPE A
    LEFT JOIN RECIPE_REPLE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) E ON A."recipeNum" = E."recipeNum"
ORDER BY A."recipeNum";

---------------�� ��ȸ
SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
       B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
FROM RECIPE A
LEFT JOIN (
    SELECT "recipeNum", MIN("imgPath") AS "imgPath"
    FROM TB_IMG
    GROUP BY "recipeNum"
) B ON A."recipeNum" = B."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS like_count
    FROM RECIPE A
    LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) C ON A."recipeNum" = C."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS BOOKMARK_COUNT
    FROM RECIPE A
    LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) D ON A."recipeNum" = D."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS REPLE_COUNT
    FROM RECIPE A
    LEFT JOIN RECIPE_REPLE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) E ON A."recipeNum" = E."recipeNum"
WHERE A."recipeNum" = 'R1'
ORDER BY A."recipeNum";







-- �α����
		SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
		       B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
        FROM(
            SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
               B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
            FROM RECIPE A
            LEFT JOIN (
                SELECT "recipeNum", MIN("imgPath") AS "imgPath"
                FROM TB_IMG
                GROUP BY "recipeNum"
            ) B ON A."recipeNum" = B."recipeNum"
            LEFT JOIN (
                SELECT A."recipeNum", COUNT(B."recipeNum") AS like_count
                FROM RECIPE A
                LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
                GROUP BY A."recipeNum"
            ) C ON A."recipeNum" = C."recipeNum"
            LEFT JOIN (
                SELECT A."recipeNum", COUNT(B."recipeNum") AS BOOKMARK_COUNT
                FROM RECIPE A
                LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
                GROUP BY A."recipeNum"
            ) D ON A."recipeNum" = D."recipeNum"
            LEFT JOIN (
                SELECT A."recipeNum", COUNT(B."recipeNum") AS REPLE_COUNT
                FROM RECIPE A
                LEFT JOIN RECIPE_REPLE B ON A."recipeNum" = B."recipeNum"
                GROUP BY A."recipeNum"
            ) E ON A."recipeNum" = E."recipeNum"
            ORDER BY C.LIKE_COUNT DESC
        )        
        WHERE ROWNUM <= 10;
        
        
        
SELECT *
FROM (
    SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
           B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
    FROM RECIPE A
    LEFT JOIN (
        SELECT "recipeNum", MIN("imgPath") AS "imgPath"
        FROM TB_IMG
        GROUP BY "recipeNum"
    ) B ON A."recipeNum" = B."recipeNum"
    LEFT JOIN (
        SELECT A."recipeNum", COUNT(B."recipeNum") AS like_count
        FROM RECIPE A
        LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
        GROUP BY A."recipeNum"
    ) C ON A."recipeNum" = C."recipeNum"
    LEFT JOIN (
        SELECT A."recipeNum", COUNT(B."recipeNum") AS BOOKMARK_COUNT
        FROM RECIPE A
        LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
        GROUP BY A."recipeNum"
    ) D ON A."recipeNum" = D."recipeNum"
    LEFT JOIN (
        SELECT A."recipeNum", COUNT(B."recipeNum") AS REPLE_COUNT
        FROM RECIPE A
        LEFT JOIN RECIPE_REPLE B ON A."recipeNum" = B."recipeNum"
        GROUP BY A."recipeNum"
    ) E ON A."recipeNum" = E."recipeNum"
    WHERE "recipeCode" = 'CH001'
    ORDER BY C.LIKE_COUNT DESC
)
WHERE ROWNUM <= 10;

		SELECT *
        FROM BOOKMARK
        WHERE "nickName" = '����'
		ORDER BY "recipeNum";
--�ϸ�ũ�Ѱ� ��������
SELECT A."recipeNum", A."recipeCode", A."recipeName", A."cockAlc", A."cockBase", A."cockInfo", A."cockRec", A."nickName",
       B."imgPath", C.LIKE_COUNT, D.BOOKMARK_COUNT, E.REPLE_COUNT
FROM RECIPE A
LEFT JOIN (
    SELECT "recipeNum", MIN("imgPath") AS "imgPath"
    FROM TB_IMG
    GROUP BY "recipeNum"
) B ON A."recipeNum" = B."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS like_count
    FROM RECIPE A
    LEFT JOIN MEMBER_LIKE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) C ON A."recipeNum" = C."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS BOOKMARK_COUNT
    FROM RECIPE A
    LEFT JOIN BOOKMARK B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) D ON A."recipeNum" = D."recipeNum"
LEFT JOIN (
    SELECT A."recipeNum", COUNT(B."recipeNum") AS REPLE_COUNT
    FROM RECIPE A
    LEFT JOIN RECIPE_REPLE B ON A."recipeNum" = B."recipeNum"
    GROUP BY A."recipeNum"
) E ON A."recipeNum" = E."recipeNum"
WHERE A."recipeNum" IN ('R16','R23','R36','R75')
ORDER BY A."recipeNum";





