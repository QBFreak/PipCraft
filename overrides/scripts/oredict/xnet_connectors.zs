/* oredict.xnet_connectors.zs v1.3
 *  Author:  QBFreak
 *  License: MIT
 *
 *  Add the various XNet Connectors to the Ore Dictionary for .... reasons
 *  TODO: Document "reasons" once they become clear :)
 *
 *  I believe this script is a vestige of some earlier XNet connector scripts.
 *  Since nothing is using the oredict entries at the moment, the script has been disabled.
 *  TODO: Remove from pack?
 */

// DISABLE THIS SCRIPT - This script is not needed at the moment
#norun

scripts.logger.crt.logInfo("Adding XNet connectors to the Oredict");

// Add all the connectors to the Ore Dictionary
val conn = <ore:connectorXnet>;
conn.add(<xnet:connector>);
conn.add(<xnet:connector:1>);
conn.add(<xnet:connector:2>);
conn.add(<xnet:connector:3>);

// Add all the advanced connectors to the Ore Dictionary
val advconn = <ore:advancedConnectorXnet>;
advconn.add(<xnet:advanced_connector>);
advconn.add(<xnet:advanced_connector:1>);
advconn.add(<xnet:advanced_connector:2>);
advconn.add(<xnet:advanced_connector:3>);

