/* vim: setlocal ft=cpp: */
#priority 100

/* logger.crt.zs - v1.1
 *  Author:  QBFreak
 *  License: MIT
 *
 * Some logging wrappers, so that we use the an identifier prefix for easier log filtering
 */

static logName as string = "PipCraft";

function logCommand(message as string) as void {
    var delim as string = " ";
    if (message[0] == "[") {
        delim = "";
    }
    logger.logCommand("[" + logName + "]" + delim + message);
}

function logInfo(message as string) as void {
    logCommand("[INFO] " + message);
}

function logWarning(message as string) as void {
    logCommand("[WARNING] " + message);
}

function logError(message as string) as void {
    logCommand("[ERROR] " + message);
}



