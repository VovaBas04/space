<?php

namespace App\Actions;

use Illuminate\Support\Collection;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;

class SaveImageAction
{
    private string $fullPath;
    private string $path;
    public function __construct()
    {
        $this->path = 'public/image';
        $this->fullPath = 'http://127.0.0.1:8000';
    }
    public function handle(Collection $images):array
    {
        $data = collect();
        $images->map(function (UploadedFile $file,string $key) use ($data){
            $data->put($key,$this->fullPath . Storage::url($file->store($this->path)));
        });
        return $data->toArray();
    }
}
