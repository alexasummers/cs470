select count(clientID), drugID
from client
group by drugID;
