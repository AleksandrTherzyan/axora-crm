<?php

use Api\Simpla;

function smarty_modifier_resize($filename, $width=0, $height=0, $set_watermark=false)
{
    $simpla = new Simpla();
    if ($set_watermark == 'w') {
        $set_watermark = true;
    }

    return $simpla->image->resize_image($filename, $width, $height, $set_watermark);
}
