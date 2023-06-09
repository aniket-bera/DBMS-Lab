/*Assignment6*/
/*1
CREATE VIEW vw_client_master as SELECT client_no, Name, Address1, Balance_due FROM client_master;
*/
/*1a
INSERT INTO vw_client_master(client_no, name, address1, balance_due)
VALUES('C007','ABHISEK SINGH','BALLY',15000);
INSERT INTO vw_client_master(client_no, name, address1, balance_due)
VALUES('C008','DIPAK DAS','SALTLAKE',10000);
INSERT INTO vw_client_master(client_no, name, address1, balance_due)
VALUES('C009','RAMAN GUPTA','HOWRAH',20000);
*/
/*1b
UPDATE vw_client_master SET balance_due=8000
WHERE client_no='C008';
*/
/*1c
DELETE FROM vw_client_master WHERE client_no='C007';
*/

/*2
CREATE VIEW vw_sales_det as 
SELECT s1.client_no, s1.order_no, s1.order_date, s2.product_no, s2.qty_ordered, s1.order_status 
FROM sales_order s1, sales_order_details s2
WHERE s1.order_no=s2.order_no AND s1.order_status='Backorder';
*/
/*2a Error
INSERT INTO vw_sales_det(client_no, order_no, order_date, product_no, qty_ordered, order_status)
VALUES('C007','O19251','12-Jan-91','P00091',100,'InProcess');
*/
/*2b Error
UPDATE vw_sales_det set client_no='C006'
WHERE order_no='O19002';
*/
/*2c
DELETE FROM vw_sales_det WHERE client_no='C002';
*/
/*2d
DROP VIEW vw_sales_det;
*/