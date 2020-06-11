<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Currency;

class UpdateCurrencies extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'currency:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Updates a currency according to the official website';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
      $xml = simplexml_load_file('https://nationalbank.kz/rss/rates_all.xml?switch=russian');

      // $currency_name = $key->title;
      // $current = Currency::find($currency_name);
      foreach ($xml->channel->item as $key) {
          $current = new Currency;
          $curent->name = $key->title;
          $current->rate = (double)$key->description / $key->quant;
          $current->date = $key->pubDate;
          $current->save();
      }
      echo "Successfully updated!";
    }
}
