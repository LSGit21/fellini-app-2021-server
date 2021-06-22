<?php

namespace App\Http\Controllers;

use App\Models\Film;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class FilmController extends Controller
{
    public function getFilms(): JsonResponse
    {
        $films = Film::get();
        return response()->json($films, 200);
    }

    public function getSingleFilm($id): JsonResponse
    {
        $film = Film::with('cast')->findOrFail($id);
        return response()->json($film, 200);
    }
}
