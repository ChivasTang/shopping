SELECT * FROM m_category;
SELECT
ms.SHOP_ID AS shopId
,ms.SHOP_NAME AS shopName
,ms.CATEGORY_ID AS categoryId
,mc.CATEGORY_NAME AS categoryName
FROM m_shop AS ms
INNER JOIN m_category AS mc ON ms.CATEGORY_ID=mc.CATEGORY_ID
WHERE ms.CATEGORY_ID=1
AND ms.DEL_KBN=0
AND mc.DEL_KBN=0
ORDER BY ms.SHOP_ID ASC,ms.SHOP_NAME ASC;



INSERT INTO m_shop(category_id, shop_name, add_user, up_user) VALUES
(1,'販売店1-2','admin','admin'),
(1,'販売店1-3','admin','admin'),
(1,'販売店1-4','admin','admin'),
(1,'販売店1-5','admin','admin'),
(1,'販売店1-6','admin','admin'),
(1,'販売店1-7','admin','admin'),
(1,'販売店1-8','admin','admin'),
(1,'販売店1-9','admin','admin'),
(1,'販売店1-10','admin','admin'),
(1,'販売店1-11','admin','admin'),
(1,'販売店1-12','admin','admin'),
(1,'販売店1-13','admin','admin'),
(1,'販売店1-14','admin','admin'),
(1,'販売店1-15','admin','admin'),
(1,'販売店1-16','admin','admin'),
(1,'販売店1-17','admin','admin'),
(1,'販売店1-18','admin','admin'),
(1,'販売店1-19','admin','admin'),
(1,'販売店1-20','admin','admin'),
(1,'販売店1-21','admin','admin'),
(1,'販売店1-22','admin','admin'),
(1,'販売店1-23','admin','admin'),
(1,'販売店1-24','admin','admin'),
(1,'販売店1-25','admin','admin'),
(1,'販売店1-26','admin','admin'),
(1,'販売店1-27','admin','admin'),
(1,'販売店1-28','admin','admin'),
(1,'販売店1-29','admin','admin'),
(1,'販売店1-30','admin','admin'),
(1,'販売店1-31','admin','admin'),
(1,'販売店1-32','admin','admin'),
(1,'販売店1-33','admin','admin'),
(1,'販売店1-34','admin','admin'),
(1,'販売店1-35','admin','admin'),
(1,'販売店1-36','admin','admin'),
(1,'販売店1-37','admin','admin'),
(1,'販売店1-38','admin','admin'),
(1,'販売店1-39','admin','admin'),
(1,'販売店1-40','admin','admin'),
(1,'販売店1-41','admin','admin'),
(1,'販売店1-42','admin','admin'),
(1,'販売店1-43','admin','admin'),
(1,'販売店1-44','admin','admin'),
(1,'販売店1-45','admin','admin'),
(1,'販売店1-46','admin','admin'),
(1,'販売店1-47','admin','admin'),
(1,'販売店1-48','admin','admin'),
(1,'販売店1-49','admin','admin'),
(1,'販売店1-50','admin','admin'),
(1,'販売店1-51','admin','admin'),
(1,'販売店1-52','admin','admin'),
(1,'販売店1-53','admin','admin'),
(1,'販売店1-54','admin','admin'),
(1,'販売店1-55','admin','admin'),
(1,'販売店1-56','admin','admin'),
(1,'販売店1-57','admin','admin'),
(1,'販売店1-58','admin','admin'),
(1,'販売店1-59','admin','admin'),
(1,'販売店1-60','admin','admin');