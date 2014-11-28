CREATE TABLE goods_original LIKE goods;
INSERT INTO goods_original SELECT * FROM goods;

DELETE FROM goods WHERE food<>"CAKE";

UPDATE goods
SET price=price+(price*0.2)
WHERE flavor="Lemon" OR flavor="Strawberry";

UPDATE goods
SET price=price-2
WHERE flavor="Napoleon" OR flavor="Chocolate";

UPDATE goods
SET price=price-(price*.1);

SELECT * FROM goods ORDER BY id;
