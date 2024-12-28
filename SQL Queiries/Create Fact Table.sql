CREATE TABLE FactCustomerOrders
  (
     customer_sk     INT NOT NULL,					-- surrogate key as a forigen key
     book_sk         INT NOT NULL,                  -- surrogate key as a forigen key
	 shipping_sk     INT NOT NULL,                  -- surrogate key as a forigen key
     date_sk         INT NOT NULL,                  -- surrogate key as a forigen key

     price           DECIMAL(10,2),					        -- Measure
     shipping_cost   DECIMAL(10,2),					        -- Measure
  );
