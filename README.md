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
Peak Covid-19 years can be defined as March 2020 through late 2021. This coincides with the significant rise in Elist sales throughout 2020 and eventual decline in 2022 when sales began to normalize. **In December 2020, Elist sales peaked at $1,251,721, compared to their lowest post-pandemic sales month in October 2022 where sales were at $178,294.** Year over year, there was a decline in sales for October, followed by an uptick in sales in November and December. This was likely due to consumers waiting for holiday sales to purchase their items.

![image](https://github.com/user-attachments/assets/aaea3cf1-2b7a-4e21-b496-4a8024f823ce)

<img width="1572" height="382" alt="image" src="https://github.com/user-attachments/assets/b6560a35-7bed-4369-b39a-2fed17ab2806" />

<img width="420" height="302" alt="image" src="https://github.com/user-attachments/assets/f4902a23-2b73-4461-8200-e606b95d5a74" />

## Regional Trends
NA contributed the most towards sales, at 52%. Although APAC only contributed 13% of sales, the AOV was the highest amongst the regions at $279. Since APAC consumers are high-value customers, this could present an opportunity to improve sales in APAC. The top 3 countries in APAC sales were Japan ($1,030,020), Australia ($974,831), and ($343,143). Since Australia is underperforming relative to other countries in APAC with AOV of $204 compared to the region's overall AOV of $279, there could me an opportunity to improve AOV in Australia.

Across regions, orders took 7.5 days to deliver with little variaion between regions. 
<img width="1602" height="242" alt="image" src="https://github.com/user-attachments/assets/a35f5e79-25ab-4126-9686-ee0c34f8f69b" />


## Product Trends
Within each region, Apple Airpods Headphones were the most popular product sold. Overall, Apple Airpods Headphones comprised 45% of orders and contributed to 28% of sales. The 27in 4K gaming monitor comprised 22% of orders but contributed to 35% of sales. 

![image](https://github.com/user-attachments/assets/bfd4ebe3-1e7a-4a18-a6c7-f2d40b589634)

<img width="1720" height="384" alt="image" src="https://github.com/user-attachments/assets/214a0b5d-fd5b-41d8-a14f-b97a42461246" />


## Loyalty Program
* **Sales Performance:** Higher for Loyalty Members from April 2021 to Aug 2022
* **AOV Performance:** Higher for Loyalty Members in Nov 2019, and from June 2021 to Oct 2022
* **Order Count Performance:** Higher for Loyalty Members from Jan 2021 to Aug 2022
* **Time to Purchase:** On average, Loyalty Program Members take less time to make a purchase after creating an account than Non-Loyalty Program members (1.6 months vs 2.3 months).

Based on the Loyalty Program Members' ability to outperform Non-Loyalty Program Members in a number of key metrics, I think it's worth continuing the Loyalty Program and monitoring performance closely in the upcoming months. At this time, it doesn't make sense to abandon the Loyalty Program despite recent dips. 

<img width="1286" height="596" alt="image" src="https://github.com/user-attachments/assets/2e2c578a-7932-45c8-a65c-91c3c0a6a5e3" />

<img width="1274" height="592" alt="image" src="https://github.com/user-attachments/assets/e0ac5197-9254-438c-8922-d9ad9731d5bf" />

<img width="1270" height="598" alt="image" src="https://github.com/user-attachments/assets/802a6aa2-30f6-4494-a014-5639fa3ebf02" />

<img width="1928" height="474" alt="image" src="https://github.com/user-attachments/assets/ab008f95-507b-4f56-983b-ee90b87e7bb7" />

## Recommendations
*  **Marketing team should shift focus towards high value customers in APAC since they have the highest AOV of all the regions.** Historically, direct and email channels have been responsible for driving the most sales in this region. However, social media and affiliate chanels drove the highest AOV in 2022. I'd recommend increased marketing through these channels to increase sales amongst high value customers in APAC. I'd also suggest utilizing ads customized to local markets and marketing products that would be popular there. Additionally, I'd suggest looking to improve AOV in Australia, through methods like promotions of more expensive products. Australia is the 2nd best selling country in APAC but has a below regional average AOV. Improving AOV in Australia will increase the aggregate AOV across all regions.
*  **Product team should consider deprecating the Bose Soundsport Headphones entirely** since only 27 headphones were ordered during this time period and contributed < 1% towards overall sales. The budget and resources can be allocated towards better performing products.
*  **Sales/Customer Success team should consider the Lifetime Value and Churn Rate of a Loyalty Program customer** compared to Non-Loyalty Program customer to understand the value of leveraging the program to retain high value customers.
*  **Finance team should compare the Customer Acquisition costs associated with running the program to the Revenue associated with the program** to determine the value of the program. These costs should continue to be monitored over time.
*  **Operations team should review the overall costs associated with Acquiring a Loyalty Program Member vs Non-Loyalty Program member** and seek ways to improve efficiencies to maximize the value of running the program.

## Future Analysis
* **Compare the following metrics for Loyalty Program Members vs Non-Loyalty Program Members:** Lifetime Value, Churn Rate, Customer Acquisition Cost, Average Order Profit (factoring total costs required to sell products)
