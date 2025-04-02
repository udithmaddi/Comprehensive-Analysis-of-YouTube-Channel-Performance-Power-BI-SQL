-- Project Title: Comprehensive Analysis of YouTube Channel Performance Using SQL

use youtube_db;
show tables;
SELECT * FROM youtube_profiles limit 10;

-- 1. Get the Total Number of Subscribers Across All Channels
SELECT SUM(subscribers) AS total_subscribers
FROM youtube_profiles;

-- 2. Get the Top 5 Channels with the Most Subscribers
SELECT name, subscribers
FROM youtube_profiles
ORDER BY subscribers DESC
LIMIT 5;

-- 3. Get the Channels that Have More Than 100,000 Subscribers
SELECT name, subscribers, videos_count
FROM youtube_profiles
WHERE subscribers > 100000;

-- 4. Get the Average Number of Subscribers per Channel
SELECT AVG(subscribers) AS avg_subscribers
FROM youtube_profiles;

-- 5. Find Channels with the Most Videos and Their Corresponding Subscriber Count
SELECT name, videos_count, subscribers
FROM youtube_profiles
ORDER BY videos_count DESC
LIMIT 5;

-- 6. Get the Total Number of Videos Across All Channels
SELECT SUM(videos_count) AS total_videos
FROM youtube_profiles;

-- 7. Get Channels with More Than 50,000 Views
SELECT name, views
FROM youtube_profiles
WHERE views > 50000;

-- 8. Find the Channel(s) with the Least Number of Subscribers
SELECT name, subscribers
FROM youtube_profiles
ORDER BY subscribers ASC
LIMIT 1;

-- 9. Count the Number of Channels from Each Country (Based on location)
SELECT Details, COUNT(*) AS num_channels
FROM youtube_profiles
GROUP BY Details
ORDER BY num_channels DESC;

-- 10. Find the Average Number of Views per Video for Each Channel
SELECT name, views / videos_count AS avg_views_per_video
FROM youtube_profiles;

-- 11. Find Channels with Missing or Null Locations
SELECT name, Details
FROM youtube_profiles
WHERE Details IS NULL;

-- 12. Find the Most Active Channel Based on the Video Count
SELECT name, videos_count
FROM youtube_profiles
ORDER BY videos_count DESC
LIMIT 1;

-- 13. Get Channels That Have the Word "AI" in Their Description
SELECT name, description
FROM youtube_profiles
WHERE description LIKE '%AI%';

-- 14. Get All Channels From the United Kingdom
SELECT * 
FROM youtube_profiles
WHERE Details LIKE '%India%';

-- 15. Find Channels With Multiple Social Media Links
SELECT name, JSON_LENGTH(links) AS num_links 
FROM youtube_profiles 
HAVING num_links > 1 
LIMIT 0, 1000;

-- 16. Calculate the Channel Growth Rate Based on Subscriber Count and Video Count
SELECT name, subscribers / NULLIF(videos_count, 0) AS growth_rate
FROM youtube_profiles;

-- 17. Find Channels That Have Descriptions Longer Than 500 Characters
SELECT name, LENGTH(description) AS description_length
FROM youtube_profiles
WHERE LENGTH(description) > 500;

-- 18. List Channels with Active Patreon or Other Support Links
SELECT name, links
FROM youtube_profiles
WHERE links LIKE '%patreon%';

-- 19. Find the Channel with the Highest View-to-Subscriber Ratio
SELECT name, views / NULLIF(subscribers, 0) AS view_subscriber_ratio
FROM youtube_profiles
ORDER BY view_subscriber_ratio DESC
LIMIT 1;

-- 20. Find Channels with More Than 100 Videos and at Least 1 Million Views
SELECT name, videos_count, views 
FROM youtube_profiles
WHERE videos_count > 100 AND views >= 1000000
ORDER BY views DESC;



-- SUMMARY AND CONCLUSIONS FROM THE SQL QUERIES --

-- 1. Total Subscribers Across Channels
-- Insight: The cumulative reach of all channels demonstrates the collective audience base on the platform.

-- 2. Top 5 Channels with Most Subscribers
-- Insight: Identifying the most influential channels provides a focus for collaborations or strategic partnerships.

-- 3. Channels with More Than 100,000 Subscribers
-- Insight: Channels with significant reach can be considered as key influencers.

-- 4. Average Subscribers Per Channel
-- Insight: Helps understand the typical reach of an average channel, giving insights into channel performance norms.

-- 5. Channels with Most Videos and Corresponding Subscriber Count
-- Insight: Examining prolific content creators provides insight into the impact of volume on audience growth.

-- 6. Total Number of Videos Across All Channels
-- Insight: Reflects overall content contribution to the platform.

-- 7. Channels with More Than 50,000 Views
-- Insight: Reveals channels achieving significant visibility.

-- 8. Channel with the Least Subscribers
-- Insight: Highlights channels struggling to gain traction, offering opportunities for improvement.

-- 9. Number of Channels by Country
-- Insight: Indicates geographic distribution, useful for regional targeting.

-- 10. Average Views Per Video
-- Insight: Analyzes engagement efficiency across videos, allowing evaluation of content quality.

-- 11. Channels with Missing or Null Locations
-- Insight: Points to channels requiring profile updates to enhance credibility.

-- 12. Most Active Channel Based on Video Count
-- Insight: Identifies creators emphasizing quantity over quality, or both.

-- 13. Channels Mentioning "AI" in Their Description
-- Insight: Highlights creators focused on AI, relevant for niche collaborations.

-- 14. Channels From Specific Countries
-- Insight: Useful for regional targeting and content customization.

-- 15. Channels with Multiple Social Media Links
-- Insight: Evaluates cross-platform presence, aiding in holistic influence assessment.

-- 16. Channel Growth Rate (Subscribers/Video Count)
-- Insight: Identifies the rate at which content creation translates into audience growth.

-- 17. Channels with Long Descriptions
-- Insight: Indicates potential SEO optimization or an emphasis on detailed branding.

-- 18. Channels with Support Links (e.g., Patreon)
-- Insight: Showcases creators leveraging monetization strategies beyond platform ads.

-- 19. Channel with the Highest View-to-Subscriber Ratio
-- Insight: Highlights channels with highly engaging content, regardless of subscriber base.

-- 20. Channels with >100 Videos and ≥1M Views
-- Insight: Identifies consistent, high-performing channels with both scale and visibility.


-- OVERALL CONCLUSION --
-- The queries provide a comprehensive understanding of YouTube channel performance 
-- based on metrics like subscribers, views, content volume, and regional insights.
-- These insights support data-driven decisions for:
-- 1. Targeted partnerships
-- 2. Audience engagement strategies
-- 3. Market expansion plans
-- 
-- Key findings include:
-- - Identification of top-performing creators
-- - Uncovering niche opportunities
-- - Highlighting areas for improvement in the platform’s ecosystem.








