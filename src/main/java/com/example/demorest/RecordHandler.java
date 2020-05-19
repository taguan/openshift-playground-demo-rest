package com.example.demorest;

import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Mono;

@Component
public class RecordHandler {

    public Mono<ServerResponse> createRecord(ServerRequest request) {
        return ServerResponse.ok().build();
    }

    public Mono<ServerResponse> helloWorld(ServerRequest request) {
        return ServerResponse.ok().build();
    }
}
