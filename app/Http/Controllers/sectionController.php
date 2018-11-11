<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreatesectionRequest;
use App\Http\Requests\UpdatesectionRequest;
use App\Repositories\sectionRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;
use App\Models\story;
use View;

class sectionController extends AppBaseController
{
    /** @var  sectionRepository */
    private $sectionRepository;

    public function __construct(sectionRepository $sectionRepo)
    {
        $this->sectionRepository = $sectionRepo;
    }

    /**
     * Display a listing of the section.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->sectionRepository->pushCriteria(new RequestCriteria($request));
        $sections = $this->sectionRepository->all();
        return view('sections.index')
            ->with('sections', $sections);
    }

    /**
     * Show the form for creating a new section.
     *
     * @return Response
     */
    public function create()
    {
       $stories = story::pluck('name','id');   
       
       //return json_encode($stories);
        return View::make('sections.create')->with(compact('stories'));
        
    }

    /**
     * Store a newly created section in storage.
     *
     * @param CreatesectionRequest $request
     *
     * @return Response
     */
    public function store(CreatesectionRequest $request)
    {
        $input = $request->all();


        $file = $request->file('url');
        if($file != null)
        {

              $this->validate($request, [
            'url' => 'mimes:jpeg,bmp,png', //only allow this type extension file.
        ]);
           
            $destionationPath = "images";
            $name = $this->quickRandom();
            $name .= ".png";
            $input['url'] = $name;
            $file->move($destionationPath,$name);

        }

        
        $file = $request->file('audio_url');
        if($file != null)
        {

              $this->validate($request, [
            'audio_url' => 'mimes:mp3,wav', //only allow this type extension file.
        ]);
            
            $destionationPath = "audio";
            $name = $this->quickRandom();
            $name .= ".mp3";
            $input['audio_url'] = $name;
            $file->move($destionationPath,$name);

        }

        $section = $this->sectionRepository->create($input);

        Flash::success('Section saved successfully.');

        return redirect(route('sections.index'));
    }

    /**
     * Display the specified section.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $section = $this->sectionRepository->findWithoutFail($id);

        if (empty($section)) {
            Flash::error('Section not found');

            return redirect(route('sections.index'));
        }

        return view('sections.show')->with('section', $section);
    }

    /**
     * Show the form for editing the specified section.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $stories = story::pluck('name','id');        

        $section = $this->sectionRepository->findWithoutFail($id);


        
        if (empty($section)) {
            Flash::error('Section not found');

            return redirect(route('sections.index'));
        }
        return view('sections.edit')->with(compact('section','stories'));

    }

    /**
     * Update the specified section in storage.
     *
     * @param  int              $id
     * @param UpdatesectionRequest $request
     *
     * @return Response
     */
    public function update($id, UpdatesectionRequest $request)
    {
        $section = $this->sectionRepository->findWithoutFail($id);

        $input = $request->all();

        $file = $request->file('url');
        if($file != null)
        {
              $this->validate($request, [
            'url' => 'mimes:jpeg,bmp,png', //only allow this type extension file.
        ]);
            $destionationPath = "images";
            $name = $this->quickRandom();
            $name .= ".png";
            $input['url'] = $name;
            $file->move($destionationPath,$name);

        }

        $file = $request->file('audio_url');
        if($file != null)
        {
              $this->validate($request, [
            'url' => 'mimes:mp3,wav', //only allow this type extension file.
        ]);
            $destionationPath = "audio";
            $name = $this->quickRandom();
            $name .= ".mp3";
            $input['audio_url'] = $name;
            $file->move($destionationPath,$name);

        }




        if (empty($section)) {
            Flash::error('Section not found');

            return redirect(route('sections.index'));
        }

        $section = $this->sectionRepository->update($input, $id);

        Flash::success('Section updated successfully.');

        return redirect(route('sections.index'));
    }

    /**
     * Remove the specified section from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $section = $this->sectionRepository->findWithoutFail($id);

        if (empty($section)) {
            Flash::error('Section not found');

            return redirect(route('sections.index'));
        }

        $this->sectionRepository->delete($id);

        Flash::success('Section deleted successfully.');

        return redirect(route('sections.index'));
    }

    public static function quickRandom($length = 16)
    {
        $pool = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

        return substr(str_shuffle(str_repeat($pool, $length)), 0, $length);
    }
}
