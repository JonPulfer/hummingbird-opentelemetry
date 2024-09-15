//
//  Middleware.swift
//
//
//  Created by Jonathan Pulfer on 15/09/2024.
//

import Foundation
import Hummingbird


final class OpenTelemetryMiddleware<Context: RequestContext>: RouterMiddleware {
	
	// TODO: Hold an injected connection to the OpenTelemetry collector
	
	// TODO: Create an init function to receive the injected connection
	
	public func handle(_ request: Request, context: Context, next: (Request, Context) async throws -> Response) async throws -> Response {
			// log request URI
			
			// pass request onto next middleware or the router and return response
			return try await next(request, context)
		}
}
