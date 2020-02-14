<?php

namespace App\Http\Controllers;

use App\Category;
use App\Ad;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth',['only' => ['addcategory','storeCategory','categories']]);
    }
    public function addcategory()
    {
        return view('skelbimai.pages.addcategory');
    }
    public function storeCategory(Request $request)
    {
        $validatedData = $request->validate([
            'pavadinimas' => 'required',

        ]);
        $category = Category::create([
           'pavadinimas' => request('pavadinimas') // pavadinimas db laukelis, o key input name
        ]);
        return redirect('/categories');
//        $cat = request('pavadinimas');
//        dd($cat);
    }
    public function categories()
    {
        $categories = Category::all();
        return view('skelbimai.pages.categories', compact('categories'));
    }
    public function deleteCategory(Category $category) // pirmas modulis, o antras parametras
    {
        $category->delete();
        return redirect('/categories');
    }
}
