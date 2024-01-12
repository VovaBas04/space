<?php

namespace App\Response;

use Illuminate\Contracts\Support\Responsable;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Http;

class CollectionResponse implements Responsable
{
    use SendJsonResponse;
    public Collection $data;
    public int $status;
    public function __construct(Collection $data,int $status=200)
    {
        $this->data = $data;
        $this->status = $status;
    }
}
