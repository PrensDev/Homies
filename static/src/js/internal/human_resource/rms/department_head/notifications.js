"use strict";

/**
 * ==============================================================================
 * NOTIFICATIONS
 * ==============================================================================
*/

/** Notification Types */
const notifTypes = {
    "Manpower Request": {
        icon: "copy",
        subtypes: {
            "Request for Manpower": {
                getContent: data => {
                    const author = data.notification_created_by;
                    const authorName = formatName('F M. L, S', {
                        firstName: author.first_name,
                        middleName: author.middle_name,
                        lastName: author.last_name,
                        suffixName: author.suffix_name,
                    });

                    return `<b>${ authorName }</b> has been requested for manpower.`
                }
            }
        }
    }
}

/** Get all notifications */
GET_ajax(`${ ROUTE.API.DH }notifications`, {
    success: result => {
        if(result) {
            let notifications = '', unread = 0;

            if(result.length > 0) {
                result.forEach(notif => {
                    const notifType = notifTypes[notif.notification_type];

                    const isUnread = () => {
                        if(notif.is_unread) {
                            unread++;
                            return `<div class="align-self-center">
                                <span class="text-danger">&#11044;</span>
                            </div>`
                        } else return ''
                    } 

                    notifications += `
                        <a href="${ ROUTE.WEB.DH }${ notif.link }" class="dropdown-item d-flex">
                            <div class="nav-icon">
                                <div class="d-flex align-items-center justify-content-center bg-secondary rounded-circle mr-2" style="height: 2.5rem; width: 2.5rem">
                                    <i class="fas fa-${ notifType.icon }" style="font-size: 17.5px"></i> 
                                </div>
                            </div>
                            <div class="flex-fill">
                                <div class="text-wrap" style="line-height: 1.25">
                                    <span>${ notifType.subtypes[notif.notification_subtype].getContent(notif) }</span>
                                </div>
                                <div class="small">${ fromNow(notif.created_at) }</div>
                            </div>
                            ${ isUnread() }
                        </a>
                    `
                });
            } else notifications = `
                <div class="text-center text-muted p-5">
                    You don't have notifications yet
                </div>
            `

            const notifCounter = () => {
                if (unread > 99) return '99+'
                else if (unread === 0) return ''
                else return unread
            }

            setContent({
                '#notifications': notifications,
                '#notifCounter': notifCounter,
                '#notifCounterForDropdown': notifCounter
            });
        }
    },
    error: () => setContent('#notifications', `
        <div class="text-center text-muted p-5">
            Sorry, but we detect an error in getting your notifications. Please refresh the page.
        </div>
    `)
});