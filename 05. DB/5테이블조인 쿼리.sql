select * from RECIPE;
select * from TB_IMG;
select * from MEMBER_LIKE;
        
        
        
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

