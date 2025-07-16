# Elist E-Commerce Company Analysis
# Overview
Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, Elist sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad.

As a Data Analyst, I will be partnering with the head of operations, Angie, to deliver insights to teams across the company, including finance, sales, product, and marketing. My focus is to help these stakeholders understand Elist’s performance so they can improve their day-to-day processes and help the company deliver top-notch products to customers around the world. 

## ERD
Elist's database structure as seen below consists of four tables: orders, customers, geo_lookup, and order_status, with a total row count of 108,127 records.
![image](https://github.com/user-attachments/assets/de5f37da-acb9-4745-aeaf-5168f6dbc1ff)

## Stakeholder's Request
![image](https://github.com/user-attachments/assets/b357f973-e572-4559-a8d9-0778e90058af)

Notes:
- Focus on sales, average order value (AOV), and order count for growth rates.
- For loyalty program performance, look at sales, order count, and average order value as north star metrics.
- For refunds and average order value, would like to focus on how these metrics compare across Apple products. Also include number of refunds as a metric.
  
# Deep-Dive Insights

## Seasonal Sales Trends
**In December 2020, Elist sales peaked at $1,251,721, compared to their lowest post-pandemic sales month in October 2022 where sales were at $178,294.** Peak Covid-19 years can be defined as March 2020 through late 2021. This coincides with the significant rise in Elist sales throughout 2020 and eventual decline in 2022 when sales began to normalize. 

<img width="1514" height="646" alt="image" src="https://github.com/user-attachments/assets/04d26707-0343-485e-8dd8-ef74b0352a4c" />

**In 2020, Elist saw an abnormal amount of sales with a 163% growth rate YoY.** This was tied to the 101% order count growth rate and 31% AOV growth rate.

<img width="1858" height="450" alt="image" src="https://github.com/user-attachments/assets/44d99576-cbd8-4f88-98d2-548faa66941b" />

* **The initial peak in sales in March 2020 was driven by a 50% MoM growth rate when consumers purchased remote work realted products.** In March 2020 when the Covid-19 lockdown went into effect, Elist sales grew as workers purchased products to facilitate working from home.

* **The YoY pattern of decline in sales for October, followed by an uptick in sales in November and December was more extreme in October 2022 as Covid-19 levels declined and sales began to normalize.** This pattern occurs every year, likely due to consumers waiting for holiday sales to purchase their items. The dip in sales was more drastic as Covid-19 levels declined and fewer remote work related products were purchased by consumers.


<img width="954" height="508" alt="image" src="https://github.com/user-attachments/assets/9fc0482d-53d5-42ec-890a-a79448a8a26e" />

## Regional Trends
* **Sales Performance:** NA contributed the most towards sales, at 52%. 
* **AOV Performance:**
  * **Although APAC only contributed 13% of sales, the AOV was the highest amongst the regions at $279.** Since APAC consumers are high-value customers, this could present an opportunity to improve sales in APAC.
  * **The top 3 countries in APAC sales were Japan ($1,030,020), Australia ($974,831), and ($343,143).** Since Australia is underperforming relative to other countries in APAC with AOV of $204 compared to the region's overall AOV of $279, there could be an opportunity to improve AOV in Australia.
* **Delivery Performance:** Across regions, orders took 7.5 days to deliver with little variaion between regions. 
<img width="1648" height="298" alt="image" src="https://github.com/user-attachments/assets/96d74100-257d-4979-97fa-80f5d39f339c" />


## Product Trends
* **Sales Performance:** **Elist’s revenue is heavily concentrated, with 96% driven by just four products: the 27" 4K gaming monitor, Apple AirPods, MacBook Air, and ThinkPad laptops.** Apple AirPods lead in volume, making up 45% of orders but only 28% of revenue, while the 27" gaming monitor punches above its weight, contributing 35% of revenue from just 22% of orders. These findings highlight the importance of continuing to promote these high-performing products to sustain market momentum.

<img width="1484" height="744" alt="image" src="https://github.com/user-attachments/assets/d213ae6c-e2e1-42da-aecb-44f18c688ad2" />


* **AOV Performance: The AOV is highest for the Macbook Air Laptop and ThinkPad Laptop.** Despite only making up 7% of Elist orders, they contribute to 33% of of sales. Since these products have such a high AOV, it could be worth investigating why their refund rates are double the average of other products.
* **Order Count Performance:** Within each region, Apple Airpods Headphones were the most popular product sold. 48,402 Apple Airphods Headphones were sold, compared to the lowest selling product, Bose Soundsport Headphones, which only had 27 orders.

<img width="1896" height="428" alt="image" src="https://github.com/user-attachments/assets/2087be53-b8a4-41c9-b9aa-a09b3e1bf7f0" />


## Loyalty Program
* **Sales Performance:** Higher for Loyalty Members from April 2021 to Aug 2022
  
<img width="1430" height="732" alt="image" src="https://github.com/user-attachments/assets/98370f4e-d865-4bf1-a9b5-50801ef51055" />

* **AOV Performance:** Higher for Loyalty Members in Nov 2019, and from June 2021 to Oct 2022
  
<img width="1562" height="742" alt="image" src="https://github.com/user-attachments/assets/2e538a34-3165-4af5-aeae-5bed3e3552a9" />

* **Order Count Performance:** Higher for Loyalty Members from Jan 2021 to Aug 2022
  
<img width="1440" height="736" alt="image" src="https://github.com/user-attachments/assets/19353c96-2e07-4929-bee0-849e3520ad36" />

* **Time to Purchase:** On average, Loyalty Program Members take less time to make a purchase after creating an account than Non-Loyalty Program members (1.6 months vs 2.3 months).

Based on the Loyalty Program Members' ability to outperform Non-Loyalty Program Members in a number of key metrics, particularly in 2022, I think it's worth continuing the Loyalty Program and monitoring performance closely in the upcoming months. At this time, it doesn't make sense to abandon the Loyalty Program despite recent dips. 
<img width="1928" height="474" alt="image" src="https://github.com/user-attachments/assets/ab008f95-507b-4f56-983b-ee90b87e7bb7" />

## Recommendations
*  **Marketing team should shift focus towards high value customers in APAC since they have the highest AOV of all the regions.** Historically, direct and email channels have been responsible for driving the most sales in this region. However, social media and affiliate chanels drove the highest AOV in 2022. I'd recommend increased marketing through these channels to increase sales amongst high value customers in APAC. I'd also suggest utilizing ads customized to local markets and marketing products that would be popular there. Additionally, I'd suggest looking to improve AOV in Australia, through methods like promotions of more expensive products. Australia is the 2nd best selling country in APAC but has a below regional average AOV. Improving AOV in Australia will increase the aggregate AOV across all regions. **They should also continue marketing their top revenue driving products**, 27in 4K gaming monitor, Apple Airpods Headphones, Macbook Air Laptop, and ThinkPad Laptop to maintain their market share. Those products makeup 96% of Elist's total revenue. Additionally, the Macbook Air Laptop and ThinkPad Laptop drive the highest AOV ($1,588 and $1,100).
*  **Product team should consider deprecating the Bose Soundsport Headphones entirely** since only 27 headphones were ordered during this time period and contributed < 1% towards overall sales. The budget and resources can be allocated towards better performing products. They should also continue selling the latest product versions of 27in 4K gaming monitor, Apple Airpods Headphones, Macbook Air Laptop, and ThinkPad Laptop products since those products comprise 96% of Elist's total revenue.
*  **Sales/Customer Success team should consider the Lifetime Value and Churn Rate of a Loyalty Program customer** compared to Non-Loyalty Program customer to understand the value of leveraging the program to retain high value customers.
*  **Finance team should compare the Customer Acquisition costs associated with running the program to the Revenue associated with the program** to determine the value of the program. These costs should continue to be monitored over time.
*  **Operations team should review the overall costs associated with Acquiring a Loyalty Program Member vs Non-Loyalty Program member** and seek ways to improve efficiencies to maximize the value of running the program.

## Future Analysis
* **Compare the following metrics for Loyalty Program Members vs Non-Loyalty Program Members:** Lifetime Value, Churn Rate, Customer Acquisition Cost, Average Order Profit (factoring total costs required to sell products)
* **Review performance by supplier** to understand trends and find opportunities to optimize on supply based costs.
* **Analyze site vs app performance** to influence strategy by purchasing channel. Future advertisements, promotions, etc can be aligned based on channel.
