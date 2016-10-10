package com.sfwltd.gradacademy.workshops.continuousdelivery

import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class ExampleAPIController {
    @RequestMapping("/index.html")
    fun aHappyChappy() = ResponseEntity.ok()
            .body("""<HTML><body><h1>Cat.</h1><p><a href="http://thecatapi.com""><img src="http://thecatapi.com/api/images/get?format=src&type=gif"></a></body></HTML>""")
}