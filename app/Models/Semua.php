<?php

namespace App\Models;

use App\Models\Jkel;
use App\Models\User;
use App\Models\Agama;
use App\Models\Jsurat;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Semua extends Model
{
    use HasFactory;

    //protected $fillable
    protected $guarded = ['id'];
    protected $with = ['author'];

    public function jsurat()
    {
        return $this->belongsTo(Jsurat::class);
    }
    public function jkel()
    {
        return $this->belongsTo(Jkel::class);
    }
    public function agama()
    {
        return $this->belongsTo(Agama::class);
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName()
    {
        return 'nama';
    }
}
