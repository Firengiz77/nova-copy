<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Intervention\Image\Exception\NotFoundException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (NotFoundException $e) {
            //
        });
    }

    public function render($request, Throwable $e)
    {
        if ($e instanceof \Symfony\Component\HttpKernel\Exception\NotFoundHttpException || $e instanceof NotFoundException)
            return redirect()->route('front.404page', ['lang' => app()->getLocale()]);

        return parent::render($request, $e);
    }
}
