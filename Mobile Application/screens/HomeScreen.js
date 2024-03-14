import React, { useEffect, useState } from 'react';
import { View, Text, StatusBar, ImageBackground, StyleSheet, Image, ScrollView, Button, TouchableOpacity, Dimensions } from 'react-native';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';
import { database } from '../assets/inventory';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { emitter } from './EventEmitter';
import axios from 'axios';
import { v4 as uuidv4 } from 'uuid';

const { height } = Dimensions.get('window');
  

const HomeScreen = () => {

  const [inventory, setInventory] = useState([]);
  const [isFanOn, setIsFanOn] = useState(false);
  const [displayErrorMessage, setDisplayErrorMessage] = useState();
  const [airQuality, setAirQuality] = useState(1);



  const [inventoryData, setInventoryData] = useState({});

//   const inventoryData = {
//     "0": 4031300250884,
//     "1": 4009932007312
// }

  const storeData = async (data) => {
    try {
      const jsonValue = JSON.stringify(data);
      await AsyncStorage.setItem('@inventory_key', jsonValue);
    } catch (e) {
      // handle save error
    }
  }

  const getRemainingExpiryDays = (item) => {
    const scanDate = new Date(item.scanDate);
    const currentDate = new Date();
    const diffTime = Math.abs(currentDate - scanDate);
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    // console.log(item, diffDays, diffTime)
    return Math.max(item.expiryDays - diffDays + 1); // Ensure it doesn't go negative
  }


  // Map barcode values to corresponding inventory items
// Map barcode values to corresponding inventory items
useEffect(() => {
  const matchingItems = Object.values(inventoryData)
    .map((barcode) => {
      const foundItem = database.find((item) => item.barcode === barcode);
      if (foundItem) {
        const uniqueId = uuidv4();
        return { ...foundItem, id: uniqueId };
      }
      return null;
    })
    .filter(Boolean);

  setInventory(matchingItems);
  storeData(matchingItems);
  console.log("//////////////////", matchingItems);
}, [inventoryData]);



  const fetchAirQuality = async () => {
    try {
      const response = await axios.get('http://192.168.169.1/airquality.json');
      setAirQuality(response.data.AirQuality);
    } catch (error) {
      console.error('Error fetching air quality data:', error);
    }
  };
  
  useEffect(() => {
    fetchAirQuality();
  }, []);

  const getInsideFridgeAirQuality = () => {
    let message = '';
    let emoji = '😊'; // Default emoji for good air quality
  
    if (airQuality < 5) {
      message = 'The air inside the fridge is in good condition.';
    } else if (airQuality === 5) {
      message = 'The air inside the fridge is of poor quality. Consider checking and ventilating.';
      emoji = '😷';
    } else if (airQuality > 5) {
      message = 'The air inside the fridge is in very bad condition. Immediate action may be needed.';
      emoji = '🤢';
    } else {
      message = 'Loading air quality data...';
      emoji = '🔄';
    }
  
    return { emoji, message };
  };
  
  


  const fetchData = async () => {
    try {
      console.log('first')
      const response = await axios.get('http://192.168.169.1/scan_state.json');
      const data = response.data;
      setInventoryData(data);
    } catch (error) {
      console.error('Error fetching data:', error);
    }
  };
  

  useEffect(() => {
    fetchData();
  }, []);

  // const matchingItems = Object.values(inventoryData)
  // .map(barcode => inventory.find(item => item.barcode === barcode))
  // .filter(Boolean);

  const retrieveData = async () => {
    try {
      const jsonValue = await AsyncStorage.getItem('@inventory_key');
      return jsonValue != null ? JSON.parse(jsonValue) : null;
    } catch (e) {
      // handle read error
    }
  }
  

  useEffect(() => {
    const fetchInventory = async () => {
      try {
        const jsonValue = await AsyncStorage.getItem('inventory');
        const inventoryData = jsonValue != null ? JSON.parse(jsonValue) : [];
        setInventory(inventoryData); // Uncomment and use this line if needed
        // console.log('fexthInv',inventoryData)
      } catch (e) {
        console.error('Error fetching data from AsyncStorage:', e);
      }
    };

  // Listener for inventory update events
  const handleInventoryUpdate = () => {
    fetchInventory(); // Re-fetch inventory data when an update event occurs
  };

  emitter.on('inventoryUpdated', handleInventoryUpdate);

  // Cleanup the listener when the component unmounts
  return () => {
    emitter.off('inventoryUpdated', handleInventoryUpdate);
  };
  }, []);

  useEffect(() => {
    const loadInventory = async () => {
      const storedInventory = await retrieveData();
      // console.log('first', storedInventory)
      if (storedInventory) {
        setInventory(storedInventory);
      }
    };
    loadInventory();
  }, []);

  const toggleFan = async () => {
    console.log("------------------------------");

  //   fetchData();
    const newState = !isFanOn;
    console.log(newState);
    const url = `http://192.168.169.1/set_relay?comp=fan&state=${newState ? '1' : '0'}`;
    // const url = `http://randomuser.me/api/`;
    console.log(url);
    setIsFanOn(newState);

    const response = await axios.get(url);
    if(response.status === 200) {
      console.log(response);
    }
  };

  const refreshData = async () => {
    // Fetch air quality data
    await fetchAirQuality();

    // Fetch inventory data
    await fetchData();
  };

  console.log('Inventory:', inventory);


  // const matchingItems = Object.values(inventoryData)
  // .map(barcode => database.find(item => item.barcode === barcode))
  // .filter(item => item && item.expiryDays <= 2);

  return (
    <View style={styles.container}>
      <ScrollView style={styles.scrollView}>
      <ImageBackground
        source={require('../assets/orange.jpg')} // Replace with the actual path to your image
        style={styles.backgroundImage}
        blurRadius={3}
      >
        <View style={styles.greetingBox}>
        <View style={styles.headerContainer}>
            <Text style={styles.greetings}>Smart Fridge</Text>
            <TouchableOpacity
              style={styles.refreshButton}
              onPress={refreshData}
            >
              <Text style={styles.refreshButtonText}>Refresh</Text>
            </TouchableOpacity>
          </View>
            
            <Text style={styles.greetingsName}>Welcome John!</Text>
            <TouchableOpacity
  style={styles.fanButton}
  onPress={toggleFan}
>
  <Text style={styles.fanButtonText}>
    {isFanOn ? 'Turn Off' : 'Turn On'}
  </Text>
</TouchableOpacity>
        </View>
        <View style={styles.dataBox}>
            <View style={styles.dataBoxHeader}>
              <Text style={styles.dataBoxHeaderText}>Inside fridge</Text>
            </View>
            <View style={styles.dataBoxEmojiContainer}>
  <View style={styles.dataBoxEmoji}>
    <Text style={styles.dataBoxEmojiContainerText}>
      {getInsideFridgeAirQuality().emoji}
    </Text>
    <Text style={styles.airQualityValue}>{`${airQuality}`}</Text>
  </View>
  <View style={styles.airQualityMessage}>
    <Text style={styles.airQualityMessageText}>
    {getInsideFridgeAirQuality().message} The current air quality index is {airQuality}.
    </Text>
  </View>
</View>

          </View>
          <View style={styles.dataBox}>
          <View style={styles.dataBoxHeader}>
  <Text style={styles.dataBoxHeaderText}>Items about to expire</Text>
</View>

<View>
  {inventory && inventory.length > 0 ? (
    // Display items with expiry date below 6 days
    inventory?.map((item) => {
      if(item.expiryDays < 6){
        return(
          <View key={item.id} style={styles.tableRow}>
                <Image source={item.imageUri}  style={styles.image} />
                <View style={styles.details}>
                  <Text style={styles.detailsHeader}>{item.itemName}</Text>
                  <Text style={styles.detailsCaption}>
                    {`Expires in ${item.expiryDays} day${item.expiryDays !== 1 ? 's' : ''}`}
                  </Text>
                </View>
              </View>
        )
      } 
      return null; // Exclude items that don't meet the condition
    })
  ) : (
    // Display message when inventory is empty or all items have expiry days more than 5
    <View style={styles.noItemsContainer}>
      <Text style={styles.airQualityMessageText}>
        {inventory && inventory.length === 0 ? 
          "No items are about to expire. Keep your fridge stocked!" :
          "All items have expiry days more than 5."
        }
      </Text>
    </View>
  )}
</View>


{/* {inventory?.map((item) => {
  if(item.expiryDays < 6){
    return(
      <View key={item.id} style={styles.tableRow}>
            <Image source={item.imageUri}  style={styles.image} />
            <View style={styles.details}>
              <Text style={styles.detailsHeader}>{item.itemName}</Text>
              <Text style={styles.detailsCaption}>
                {`Expires in ${item.expiryDays} day${item.expiryDays !== 1 ? 's' : ''}`}
              </Text>
            </View>
          </View>
    )
  } 
})} */}

</View>


        
      </ImageBackground>
      </ScrollView>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    
  },
  backgroundImage: {
    flex: 1,
    resizeMode: 'cover',
    minHeight: height,
  },
  dataBox: {
    margin: 10,
    backgroundColor: "white",
    borderRadius: 10,
    padding: 10,
  },
  greetingBox: {
    padding: 10,
  },
  greetings: {
    fontSize: 25,
    paddingTop: 60,
    color: '#FFFFFF',
  },
  greetingsName:{
    fontSize: 40,
    paddingTop: 60,
    color: '#FFFFFF',
  },
  dataBoxHeader: {
    borderBottomWidth: 1,  // Add a border only at the bottom
    borderColor: '#ccc',  // Border color
    paddingBottom: 8,    // Optional: Adjust the padding to create space between text and border
  },
  dataBoxHeaderText:{
    fontSize: 20,
    fontWeight: 'bold',
  },
  tableRow: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 10,
  },
  image: {
    width: 60,
    height: 60,
    marginRight: 10,
    borderRadius: 30, // Optional: Set borderRadius for a circular image
    objectFit: "cover",
    borderWidth: 1,  // Add a border only at the bottom
    borderColor: '#ccc',  // Border color
    paddingBottom: 8,
  },
  details: {
    flex: 1,
  },
  detailsHeader:{
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  detailsCaption:{
    color: 'red',
    fontSize: 12,
    
  },
  dataBoxEmoji:{
    width: '50%',
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  fanButton: {
    backgroundColor: '#007bff', // Blue background
    padding: 10,
    borderRadius: 5,
    marginTop: 25,
    alignItems: 'center', // Center text horizontally
    justifyContent: 'center', // Center text vertically
  },
  fanButtonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold',
  },
  headerContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  refreshButton: {
    backgroundColor: '#28a745', // Green background
    padding: 8,
    borderRadius: 5,
    marginLeft: 10,
    marginTop: 60,
    alignItems: 'center', // Center text horizontally
    justifyContent: 'center', // Center text vertically
  },
  refreshButtonText: {
    color: 'white',
    fontSize: 12,
    fontWeight: 'bold',
  },


  dataBoxEmojiContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: 10,
  },
  dataBoxEmoji: {
    alignItems: 'center',
    marginRight: 10,
  },
  airQualityValue: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#007bff', // Blue color for air quality value
  },
  dataBoxEmojiContainerText: {
    fontSize: 30,
  },
  airQualityMessage: {
    flex: 1,
    marginLeft: 10,
  },
  airQualityMessageText: {
    fontSize: 18,
    color: '#555', // Dark gray color for air quality message
  },
  

  
});

export default HomeScreen;
