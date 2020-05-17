//
//  FilterPacketProvider.m
//  netd
//
//  Created by Ed D on 17.05.2020.
//  Copyright © 2020 Alexey Dyumin. All rights reserved.
//

#import "FilterPacketProvider.h"

@implementation FilterPacketProvider

- (void)startFilterWithCompletionHandler:(void (^)(NSError *error))completionHandler {

	self.packetHandler = ^NEFilterPacketProviderVerdict(NEFilterPacketContext * _Nonnull context, nw_interface_t  _Nonnull interface, NETrafficDirection direction, const void * _Nonnull packetBytes, const size_t packetLength) {
		return NEFilterPacketProviderVerdictAllow;
	};
}

- (void)stopFilterWithReason:(NEProviderStopReason)reason completionHandler:(void (^)(void))completionHandler {
    // Add code to clean up filter resources.
    completionHandler();
}

@end
