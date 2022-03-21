"use strict";

/**
 * ==============================================================================
 * NOTIFICATIONS
 * ==============================================================================
*/

/** Get notifications */
getUserNotifications({
    apiRoute: ROUTE.API.R,
    webRoute: ROUTE.WEB.R,
    notifTypes: {
        "Manpower Request": {
            icon: "copy",
            subtypes: {
                /**
                 * TODO: Create notification subtypes for recruiter
                 */
            }
        }
    }
});

/** Unread notifications */
const unreadNotification = (notificationID) => {
    PUT_ajax(`${ ROUTE.API.R }notifications/${notificationID}/unread`, {
        success: () => {},
        error: () => toastr.error('There was an error in updating recruitment notification')
    });
}