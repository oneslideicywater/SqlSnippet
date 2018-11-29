DECLARE
    vPropertyNo PropertyForRent.propertyNo%TYPE
    vStreet     PropertyForRent.street%TYPE
    vCity       PropertyForRent.city%TYPE
    vPostcode   PropertyForRent.postcode%TYPE

--声明变量
--定义Cursor
    CURSOR propertyCursor IS
        SELECT propertyNo,street,city,postcode
        FROM PropertyForRent
        WHERE staffNo="SG14"
        ORDER by propertyNo;

----定义利用Cursor进行迭代

BEGIN
   OPEN propertyCursor

   LOOP
   --fetch each row of result table
        FETCH propertyCursor INTO vPropertyNo,vStreet,vCity,vPostcode;   --装载进入四个临时变量
        EXIT WHEN propertyCursor%NOTFOUND;          --到结果集末尾结束
   END LOOP;
END;
