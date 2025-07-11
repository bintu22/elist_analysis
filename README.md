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
Peak Covid-19 years can be defined as March 2020 through September    . This coincides with the significant rise in Elist sales throughout 2020 and eventual decline in 2022. **In December 2020, Elist sales peaked at $1,251,721, compared to their lowest post-pandemic sales month in October 2022 where sales were at $178,294.** Year over year, there was a decline in sales for October, followed by an uptick in sales in November and December. This was likely due to consumers waiting for holiday sales to purchase their items.

![image](https://github.com/user-attachments/assets/aaea3cf1-2b7a-4e21-b496-4a8024f823ce)

<img width="1572" height="382" alt="image" src="https://github.com/user-attachments/assets/b6560a35-7bed-4369-b39a-2fed17ab2806" />

<img width="420" height="302" alt="image" src="https://github.com/user-attachments/assets/f4902a23-2b73-4461-8200-e606b95d5a74" />

## Regional Trends
NA contributed the most towards sales, at 52%. Although APAC only contributed 13% of sales, the AOV was the highest amongst the regions at $279. Since APAC consumers are high-value customers, this could present an opportunity to improve sales in APAC. The top 3 countries in APAC sales were Japan ($1,030,020), Australia ($974,831), and ($343,143). Since Australia is underperforming relative to other countries in APAC with AOV of $204 compared to the region's overall AOV of $279, there could me an opportunity to improve AOV in Australia.

Across regions, orders took 7.5 days to deliver with little variaion between regions. 
<img width="1602" height="242" alt="image" src="https://github.com/user-attachments/assets/a35f5e79-25ab-4126-9686-ee0c34f8f69b" />


## Product Trends
Within each region, Apple Airpods Headphones were the most popular product sold. Overall, Apple Airpods Headphones comprised 45% of orders and contributed to 28% of Sales. The 27in 4K gaming monitor comprised 22% of orders but contributed to 35% of sales. 

![image](https://github.com/user-attachments/assets/bfd4ebe3-1e7a-4a18-a6c7-f2d40b589634)

<img width="1720" height="384" alt="image" src="https://github.com/user-attachments/assets/214a0b5d-fd5b-41d8-a14f-b97a42461246" />


## Loyalty Program
On average, Loyalty Program Members take less time to make a purchase after creating an account than Non-Loyalty Program members (1.6 months vs 2.3 months). 
<img width="1430" height="602" alt="image" src="https://github.com/user-attachments/assets/26a77902-d925-4ffb-81d1-fc266ce60883" />

<img width="1928" height="474" alt="image" src="https://github.com/user-attachments/assets/ab008f95-507b-4f56-983b-ee90b87e7bb7" />

## Recommendations
*  **Market towards high value customers in APAC since they have the highest AOV of all the regions.** Historically, direct and email channels have been responsible for driving the most sales in this region. However, social media and affiliate chanels drove the highest AOV in 2022. I'd recommend increased marketing through these channels to increase sales amongst high value customers in APAC. I'd also suggest utilizing ads customized to local markets and marketing products that would be popular there. Additionally, I'd suggest looking to improve AOV in Australia, through methods like promotions of more expensive products. Australia is the 2nd best selling country in APAC but has a below regional average AOV. Improving AOV in Australia will increase the aggregate AOV across all regions.
*  **Product team should consider deprecating the Bose Soundsport Headphones entirely** since only 27 headphones were ordered during this time period and contributed < 1% towards overall sales. The budget and resources can be allocated towards better performing products.

