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

**In 2020, Elist experienced an exceptional 163% year-over-year sales growth, with revenue jumping from $3.87M in 2019 to $10.16M.** This surge was driven by a 101% increase in order volume and a 31% rise in average order value—largely influenced by pandemic-related demand shifts.

<img width="1858" height="450" alt="image" src="https://github.com/user-attachments/assets/44d99576-cbd8-4f88-98d2-548faa66941b" />

* **The initial peak in sales in March 2020 was driven by a 50% MoM growth rate when consumers purchased remote work realted products.** In March 2020 when the Covid-19 lockdown went into effect, Elist sales grew as workers purchased products to facilitate working from home.

* **The YoY pattern of decline in sales for October, followed by an uptick in sales in November and December was more extreme in October 2022 as Covid-19 levels declined and sales began to normalize.** This pattern occurs every year, likely due to consumers waiting for holiday sales to purchase their items. The dip in sales was more drastic as Covid-19 levels declined and fewer remote work related products were purchased by consumers.


<img width="954" height="508" alt="image" src="https://github.com/user-attachments/assets/9fc0482d-53d5-42ec-890a-a79448a8a26e" />

## Regional Trends
* **Sales Performance:** NA led with 52% of total sales, while LATAM contributed just 6% towards total sales. This range highlights a strong regional imbalance in sales performance.
* **AOV Performance:**
  * **Although APAC only contributed 13% of sales, the AOV was the highest amongst the regions at $279.** Since APAC consumers are high-value customers, this could present an opportunity to improve sales in APAC.
  * **The top 3 countries in APAC sales were Japan ($1,030,020), Australia ($974,831), and ($343,143).** Since Australia is underperforming relative to other countries in APAC with AOV of $204 compared to the region's overall AOV of $279, there could be an opportunity to improve AOV in Australia.
* **Delivery Performance:** Across regions, orders took 7.5 days to deliver with little variaion between regions.
  
<img width="1648" height="298" alt="image" src="https://github.com/user-attachments/assets/96d74100-257d-4979-97fa-80f5d39f339c" />


## Product Trends
* **Sales Performance: Elist’s revenue is heavily concentrated, with 96% driven by just four products: the 27" 4K gaming monitor, Apple AirPods, MacBook Air, and ThinkPad Laptops.** Apple AirPods lead in volume, making up 45% of orders but only 28% of revenue, while the 27" gaming monitor punches above its weight, contributing 35% of revenue from just 22% of orders. These findings highlight the importance of continuing to promote these high-performing products to sustain market momentum.

<img width="1484" height="744" alt="image" src="https://github.com/user-attachments/assets/d213ae6c-e2e1-42da-aecb-44f18c688ad2" />


* **AOV Performance: MacBook Air and ThinkPad Laptops drove the highest AOV at over $1,000, while the Samsung Charging Cable Pack had the lowest AOV at just $20**—highlighting a wide value range across Elist’s product portfolio. Despite only making up 7% of Elist orders, the MacBook Air and ThinkPad Laptops contribute to 33% of of sales. Since these products have such a high AOV, it could be worth investigating why their refund rates are double the average of other products.
* **Order Count Performance: Within each region, Apple Airpods Headphones were the most popular product sold.** 48,402 Apple Airphods Headphones were sold, compared to the lowest selling product, Bose Soundsport Headphones, which only had 27 orders.

<img width="1734" height="390" alt="image" src="https://github.com/user-attachments/assets/9ab52d62-58f6-40a2-83d9-bb09187ab315" />


## Loyalty Program
* **Sales Performance:** **Sales higher for Loyalty Members from April 2021 to Aug 2022.** From January 2019 to March 2021, Non-Loyalty Members outperformed Loyalty Members in terms of total sales. However, beginning in April 2021, a sharp decline in Non-Loyalty sales coincided with a rise in Loyalty Member sales—marking a turning point. From that point through August 2022, Loyalty Members consistently outperformed Non-Loyalty Members.
  
<img width="1430" height="732" alt="image" src="https://github.com/user-attachments/assets/98370f4e-d865-4bf1-a9b5-50801ef51055" />

* **AOV Performance:** **AOV higher for Loyalty Members in Nov 2019, and from June 2021 to Oct 2022.** From January 2019 to May 2021, Non-Loyalty Members consistently had a higher average order value. However, Loyalty Members briefly surpassed them in November 2019 and again more substantially from June 2021 to October 2022.
  
<img width="1562" height="742" alt="image" src="https://github.com/user-attachments/assets/2e538a34-3165-4af5-aeae-5bed3e3552a9" />

* **Order Count Performance:** **Order Count higher for Loyalty Members from Jan 2021 to Aug 2022.** From January 2019 to December 2020, Non-Loyalty Members placed more orders than Loyalty Members. However, from January 2021 to August 2022, Loyalty Members overtook in order volume. By August 2022, the trend shifted again, with Non-Loyalty Members regaining the lead.

<img width="1430" height="726" alt="image" src="https://github.com/user-attachments/assets/6d090ade-a296-4c00-aa3f-8931885f2a41" /> 

* **Time to Purchase:** On average, Loyalty Program Members take less time to make a purchase after creating an account than Non-Loyalty Program members (1.6 months vs 2.3 months).

Based on the Loyalty Program Members' ability to outperform Non-Loyalty Program Members in a number of key metrics, particularly in 2022, I think it's worth continuing the Loyalty Program and monitoring performance closely in the upcoming months. At this time, it doesn't make sense to abandon the Loyalty Program despite recent dips. 

<img width="1664" height="448" alt="image" src="https://github.com/user-attachments/assets/ac108ff9-ce0f-4e90-9ada-fce1c1c024ee" />

## Recommendations
*  **Marketing team should shift focus towards high value customers in APAC since they have the highest AOV of all the regions.** Historically, direct and email channels have been responsible for driving the most sales in this region. However, social media and affiliate chanels drove the highest AOV in 2022. I'd recommend increased marketing through these channels to increase sales amongst high value customers in APAC. I'd also suggest utilizing ads customized to local markets and marketing products that would be popular there.
    * **Additionally, I'd suggest looking to improve AOV in Australia**, through methods like promotions of more expensive products. Australia is the 2nd best selling country in APAC but has a below regional average AOV. Improving AOV in Australia will increase the aggregate AOV across all regions.
    * **They should also continue marketing their top revenue driving products**, 27in 4K gaming monitor, Apple Airpods Headphones, Macbook Air Laptop, and ThinkPad Laptop to maintain their market share. Those products makeup 96% of Elist's total revenue. Additionally, the Macbook Air Laptop and ThinkPad Laptop drive the highest AOV ($1,588 and $1,100).
*  **Product team should consider deprecating the Bose Soundsport Headphones entirely** since only 27 headphones were ordered during this time period and contributed < 1% towards overall sales. The budget and resources can be allocated towards better performing products. They should also continue selling the latest product versions of 27in 4K gaming monitor, Apple Airpods Headphones, Macbook Air Laptop, and ThinkPad Laptop products since those products comprise 96% of Elist's total revenue.
*  **Sales/Customer Success team should consider the Lifetime Value and Churn Rate of a Loyalty Program customer** compared to Non-Loyalty Program customer to understand the value of leveraging the program to retain high value customers.
*  **Finance team should compare the Customer Acquisition costs associated with running the program to the Revenue associated with the program** to determine the value of the program. These costs should continue to be monitored over time.
*  **Operations team should review the overall costs associated with Acquiring a Loyalty Program Member vs Non-Loyalty Program member** and seek ways to improve efficiencies to maximize the value of running the program.

## Future Analysis
* **Compare the following metrics for Loyalty Program Members vs Non-Loyalty Program Members:** Lifetime Value, Churn Rate, Customer Acquisition Cost, Average Order Profit (factoring total costs required to sell products)
* **Review performance by supplier** to understand trends and find opportunities to optimize on supply based costs.
* **Analyze site vs app performance** to influence strategy by purchasing channel. Future advertisements, promotions, etc can be aligned based on channel.
