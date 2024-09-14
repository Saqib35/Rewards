<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
class HomePageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Insert data into the "home_pages" table using raw SQL query
        DB::table('home_pages')->insert([
            'content' => '<div class="updatSetting">
            <hr />By Staff ⏰ Updated <strong>December 8, 2023</strong>
            
            <hr /></div>
            
            <div class="pt-3 updatSetting">
            <h2>The Silver rate in Pakistan today, 7 December 2023, is as follows:</h2>
            
            <ul>
                <li>Rs 227 per 1 gram</li>
                <li>Rs 2,272 per 10 grams</li>
                <li>Rs 2,650 per tola</li>
                <li>Rs 7,067 per 1 ounce</li>
                <li>Rs 227,195 per 1 kilogram</li>
            </ul>
            
            <p>Please note that the silver rate remains the same all over Pakistan but you may notice a slight difference of a few hundred rupees across cities.</p>
            
            <p>You can also check <strong>today&rsquo;s gold rate here.</strong></p>
            
            <h2>Today Chandi Rate in Pakistan 7 December 2023</h2>
            
            <div class="table-responsive">
            <table class="table table-bordered table-hover" style="width:100%">
                <thead>
                    <tr>
                        <th>Silver Type</th>
                        <th>Rate per Gram</th>
                        <th>Rate per 10 Grams</th>
                        <th>Rate per Tola</th>
                        <th>Rate per Troy Ounce</th>
                        <th>Rate per Kilogram</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>24K</td>
                        <td>227</td>
                        <td>2,272</td>
                        <td>2,650</td>
                        <td>7,067</td>
                        <td>227,195</td>
                    </tr>
                    <tr>
                        <td>22K</td>
                        <td>208</td>
                        <td>2,077</td>
                        <td>2,423</td>
                        <td>6,461</td>
                        <td>207,716</td>
                    </tr>
                    <tr>
                        <td>21K</td>
                        <td>198</td>
                        <td>1,980</td>
                        <td>2,309</td>
                        <td>6,158</td>
                        <td>197,977</td>
                    </tr>
                    <tr>
                        <td>18K</td>
                        <td>169</td>
                        <td>1,688</td>
                        <td>1,968</td>
                        <td>5,249</td>
                        <td>168,760</td>
                    </tr>
                </tbody>
            </table>
            </div>
            &nbsp;
            
            <p>In the above table, you can see silver rates in 24, 22, 21, and 18K above rates are just for an idea since gold and silver rates fluctuate throughout the day you may see a few hundred rupees difference across the city and before making any purchase visit your city&rsquo;s bullion market for more up to date silver rates.</p>
            
            <h2>Silver Rate in Different Cities of Pakistan</h2>
            
            <table class="table table-bordered table-hover" style="width:100%">
                <thead>
                    <tr>
                        <th>City</th>
                        <th>Silver Rate per Tola</th>
                        <th>Silver Rate per 10 Gram</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Karachi</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Hyderabad</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Lahore</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Multan</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Islamabad</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Faisalabad</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Rawalpindi</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                    <tr>
                        <td>Quetta</td>
                        <td>2,650</td>
                        <td>2,272</td>
                    </tr>
                </tbody>
            </table>
            
            <h2>52.5 Tola Chandi Price in Different Cities of Pakistan</h2>
            
            <table class="table table-bordered table-hover" style="width:100%">
                <thead>
                    <tr>
                        <th>City</th>
                        <th>52.5 Tola Chandi City Prices</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Karachi</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Hyderabad</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Lahore</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Multan</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Islamabad</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Faisalabad</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Rawalpindi</td>
                        <td>139,125</td>
                    </tr>
                    <tr>
                        <td>Quetta</td>
                        <td>139,125</td>
                    </tr>
                </tbody>
            </table>
            
            <p>We want to clarify that the silver rate remains the same throughout Pakistan, although you may notice a little bit of a difference of 50 rupees to 200 rupees across cities.</p>
            
            <h2>Factors Affecting Silver Prices</h2>
            
            <p>The major factors that cause the fluctuation of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</p>
            
            <p>1. <strong>Economic stability:</strong> Pakistan&rsquo;s economic stability is one of the major factors which affect the silver rate.</p>
            
            <p>2. <strong>Political Conditions:</strong> As you know Pakistan&rsquo;s Political condition is worse than ever in 2023. It affects the silver rates directly uncertain political matters are one of the key factors that affect silver rates.</p>
            
            <p>3. <strong>USD Dollar:</strong> Changes in the value of the US dollar also impact silver prices in Pakistan, as silver is traded internationally in dollars.</p>
            
            <h2>Current Silver Rates in Pakistan</h2>
            
            <p>As of Wednesday, 7 December 2023, the silver rate in Pakistan stands at Rs. 2,650 per tola. These rates can vary from city to city. For instance, in Karachi, Hyderabad, Lahore, Multan, Islamabad, Faisalabad, Rawalpindi, and Quetta.</p>
            
            <h4>1. What is the current silver rate in Pakistan?</h4>
            
            <p>As of today, 7 December 2023, the silver rate in Pakistan is Rs. 2,650 per tola.</p>
            
            <h4>2. Why does the silver Rate fluctuate?</h4>
            
            <p>The major factors that cause the fluctuation of silver rates in Pakistan are economic stability, political conditions, and changes in the value of the US dollar, as silver is traded internationally in dollars.</p>
            
            <h2>Is the silver rate the same in all cities of Pakistan?</h2>
            
            <p>Yes, the silver rate remains the same throughout Pakistan but you may find a difference of 50 to 200 rupees in different cities.</p>
            
            <h2>How can I keep track of the latest silver rates in Pakistan?</h2>
            
            <p>To stay updated with the latest silver rates in Pakistan, you can regularly check reliable sources like ******</p>
            
            <h2>Can silver prices be affected by global factors?</h2>
            
            <p>Yes, silver prices can be influenced by global factors.</p>
            
            <h2>How often do silver rates change?</h2>
            
            <p>Silver rates can fluctuate throughout the day, based on market conditions and global factors.</p>
            </div>',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
