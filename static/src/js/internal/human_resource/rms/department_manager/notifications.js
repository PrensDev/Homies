"use strict";

/**
 * ==============================================================================
 * NOTIFICATIONS
 * ==============================================================================
*/

/** Get notifications */
getUserNotifications({
    apiRoute: ROUTE.API.DM,
    webRoute: ROUTE.WEB.DM,
    notifTypes: {
        "Manpower Request": {
            icon: "copy",
            subtypes: {
                "Signed Request": {
                    getContent: data => {
                        const author = data.notification_created_by;
                        const authorName = formatName('F M. L, S', {
                            firstName: author.first_name,
                            middleName: author.middle_name,
                            lastName: author.last_name,
                            suffixName: author.suffix_name,
                        });
                        return `Your manpower request has been signed by <b>${ authorName }</b>.`
                    }
                },
                "Rejected For Signing": {
                    getContent: data => {
                        const author = data.notification_created_by;
                        const authorName = formatName('F M. L, S', {
                            firstName: author.first_name,
                            middleName: author.middle_name,
                            lastName: author.last_name,
                            suffixName: author.suffix_name,
                        });
                        return `Your manpower request has been rejected for signing by <b>${ authorName }</b>.`
                    }
                },
            }
        }
    }
});

/** Unread notifications */
const unreadNotification = (notificationID) => {
    PUT_ajax(`${ ROUTE.API.DM }notifications/${notificationID}/unread`, {
        success: () => {},
        error: () => toastr.error('There was an error in updating recruitment notification')
    });
}