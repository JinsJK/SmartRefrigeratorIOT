import React, { useEffect, useState } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import unknown from '../assets/unknown.jpeg'

import {
  View,
  Text,
  StyleSheet,
  ScrollView,
  Image,
  TouchableOpacity,
  Modal,
  TextInput,
} from 'react-native';
import { FontAwesome } from '@expo/vector-icons';
import { Picker, PickerIOS } from '@react-native-picker/picker';
import { database } from '../assets/inventory';
import { emitter } from './EventEmitter';
import DropDownPicker from 'react-native-dropdown-picker';



const Inventory = () => {
  const [isModalVisible, setIsModalVisible] = useState(false);
  const [itemName, setItemName] = useState('');
  const [selectedCategory, setSelectedCategory] = useState(null);
  const [inventory, setInventory] = useState();
  const [matchedItems, setMatchedItems] = useState();
  const [expiryDays, setExpiryDays] = useState('');
  const [open, setOpen] = useState(false);
  const [value, setValue] = useState(null);
  const [items, setItems] = useState([
    { label: 'Dairy', value: 'dairy' },
    { label: 'Vegetable', value: 'vegetable' },
    { label: 'Fruit', value: 'fruit' },
    // ... add other categories as needed
  ]);
  


const retrieveData = async () => {
  try {
    const jsonValue = await AsyncStorage.getItem('@inventory_key');
    return jsonValue != null ? JSON.parse(jsonValue) : null;
  } catch (e) {
    // handle read error
  }
}

const deleteItem = async (id) => {
  console.log('Deleting item with ID:', id);

  const updatedInventory = inventory.filter(item => item.id !== id);
  console.log('Updated Inventory:', updatedInventory);

  setInventory(updatedInventory);
  await AsyncStorage.setItem('inventory', JSON.stringify(updatedInventory));
  console.log('AsyncStorage Updated');

  // After deleting an item and updating AsyncStorage
  emitter.emit('inventoryUpdated');
};






  // const inventoryData = {
  //   "0": "345678",
  //   "1": "345677",
  //   // ... more barcode values
  // };

  // // Map barcode values to corresponding inventory items
  // useEffect(() => {
  //   const matchingItems = Object.values(inventoryData)
  //     .map((barcode) => database.find((item) => item.barcode === barcode))
  //     .filter(Boolean);
  //   console.log(matchingItems);
  //   setInventory([...matchingItems]);
  //   storeData(matchingItems);
  // }, []);
  


  useEffect(() => {
    const loadInventory = async () => {
      const storedInventory = await retrieveData();
      if (storedInventory) {
        setInventory(storedInventory);
      }
    };
    loadInventory();
  }, []);
  
  

  const saveInventory = async (newInventory) => {
    console.log('adding item')
    try {
      const res = await AsyncStorage.setItem('inventory', JSON.stringify(newInventory));
      console.log(res)
      setInventory(newInventory); // Update the state with the new inventory
      emitter.emit('inventoryUpdated');
    } catch (error) {
      console.error('Failed to save inventory', error);
    }
  };
  


  const toggleModal = () => {
    setIsModalVisible(!isModalVisible);
    setSelectedCategory(null);
    setItemName('');
    setExpiryDays('');
  }

  const handleNameChange = (text) => setItemName(text);

  const handleCategoryChange = (value) => setSelectedCategory(value);

  const handleExpiryDaysChange = (text) => setExpiryDays(text);


  const clearAsyncStorage = async () => {
    try {
      await AsyncStorage.clear();
      console.log('AsyncStorage cleared successfully');
    } catch (error) {
      console.error('Failed to clear AsyncStorage', error);
    }
  };


  // clearAsyncStorage();

  const handleSubmit = () => {
    const defaultImageUri = unknown;
    const defaultExpiryDays = 7;
    const defaultBarcode = 'default_barcode';


    const newItem = {
      id: new Date().getTime(), // Assigning a new ID
      imageUri: defaultImageUri,
      itemName: itemName,
      expiryDays: expiryDays ? parseInt(expiryDays, 10) : defaultExpiryDays, // Convert to number
      barcode: defaultBarcode,
      scanDate: new Date().toISOString(),
      // ... any other default properties
    };

    const newInventory = [...inventory, newItem];

    saveInventory(newInventory); // Save the updated inventory
    toggleModal();
  };

  console.log('inventory page',inventory)

  return (
    <View style={styles.container}>
      <ScrollView>
        {/* Render Inventory Sections */}
        {renderInventorySection('Inventory', inventory)}

        {/* Modal */}
        <Modal visible={isModalVisible} animationType="slide" transparent={false}>
  <View style={styles.modal}>
    <View style={styles.modalContent}>
      {/* Modal Title */}
      <Text style={styles.modalTitle}>Add Item</Text>

      {/* Text Input for Item Name */}
      <Text style={styles.inputLabel}>Item Name</Text>
      <TextInput
        style={styles.input}
        placeholder="Enter Item Name"
        value={itemName}
        onChangeText={handleNameChange}
      />

      {/* Picker for Category */}
      <Text style={styles.inputLabel}>Category</Text>
      <DropDownPicker
  open={open}
  value={value}
  items={items}
  setOpen={setOpen}
  setValue={setValue}
  setItems={setItems}
  style={{
    backgroundColor: "#f8f8f8", // Set the background color to gray
    borderColor: "lightgray", // Optional: set border color
    color:'gray',
    ...styles.picker, // Include other styling from your styles
  }}
  dropDownContainerStyle={{// Set the dropdown container background color to gray
    borderColor: "lightgray", // Optional: set border color of the dropdown container
  }}
  labelStyle={{
    color: 'gray', // Change text color
    // Add any additional text styling here
  }}
  // ... other props
/>



      <Text style={styles.inputLabel}>Expires In (days)</Text>
      <TextInput
        style={styles.input}
        placeholder="Enter number of days"
        value={expiryDays}
        onChangeText={handleExpiryDaysChange}
        keyboardType="numeric" // Ensures only numbers are entered
      />


      {/* Submit Button */}
      <TouchableOpacity style={styles.button} onPress={handleSubmit}>
        <Text style={styles.buttonText}>Submit</Text>
      </TouchableOpacity>

      {/* Close Button */}
      <TouchableOpacity style={styles.button} onPress={toggleModal}>
        <Text style={styles.buttonText}>Close</Text>
      </TouchableOpacity>
    </View>
  </View>
</Modal>

      </ScrollView>

      {/* Button with plus icon */}
      <TouchableOpacity style={styles.addButton} onPress={toggleModal}>
        <FontAwesome name="plus" size={30} color="white" />
      </TouchableOpacity>
    </View>
  );

  // Function to render each inventory section
  function renderInventorySection(title, items) {
    return (
      <View style={styles.dataBox}>
        <View style={styles.dataBoxHeader}>
          <Text style={styles.dataBoxHeaderText}>{title}</Text>
        </View>
        {items?.map((item) => (
          <View key={item.id} style={styles.tableRow}>
            <Image source={item.imageUri}  style={styles.image} />
            <View style={styles.details}>
              <Text style={styles.detailsHeader}>{item.itemName}</Text>
              <Text style={styles.detailsCaption}>
                {`Expires in ${item.expiryDays} day${item.expiryDays !== 1 ? 's' : ''}`}
              </Text>
            </View>
            <TouchableOpacity onPress={() => deleteItem(item.id)} style={styles.deleteButton}>
              <Text style={styles.deleteButtonText}>Delete</Text>
            </TouchableOpacity>
          </View>
        ))}
      </View>
    );
  }
};


const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  dataBox: {
    margin: 10,
    backgroundColor: 'white',
    borderRadius: 10,
    padding: 10,
    flex: 1,
  },
  dataBoxHeader: {
    borderBottomWidth: 1,
    borderColor: '#ccc',
    paddingBottom: 8,
  },
  dataBoxHeaderText: {
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
    borderRadius: 30,
    objectFit: 'cover',
    borderWidth: 1,
    borderColor: '#ccc',
    paddingBottom: 8,
  },
  details: {
    flex: 1,
  },
  detailsHeader: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 5,
  },
  detailsCaption: {
    color: 'gray',
    fontSize: 12,
  },
  addButton: {
    position: 'absolute',
    bottom: 20,
    right: 20,
    backgroundColor: '#007bff',
    borderRadius: 30,
    width: 60,
    height: 60,
    alignItems: 'center',
    justifyContent: 'center',
  },
  modal: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
  },
  modalContent: {
    width: '90%',
    padding: 20,
    backgroundColor: 'white',
    borderRadius: 10,
  },
  input: {
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    marginBottom: 10,
    padding: 10,
    borderRadius: 5,
  },
  button: {
    backgroundColor: '#007bff',
    padding: 10,
    borderRadius: 5,
    marginTop: 10,
    alignItems: 'center',
  },
  buttonText: {
    color: 'white',
  },
  
modal: {
  flex: 1,
  justifyContent: 'center',
  alignItems: 'center',
  backgroundColor: 'rgba(0, 0, 0, 0.8)', // Darker background for better contrast
},
modalContent: {
  width: '90%',
  padding: 20,
  backgroundColor: 'white',
  borderRadius: 20, // Rounded corners
  shadowColor: '#000', // Adding shadow
  shadowOffset: {
    width: 0,
    height: 2,
  },
  shadowOpacity: 0.25,
  shadowRadius: 3.84,
  elevation: 5,
},
input: {
  height: 50, // Increased height for better touch area
  borderColor: '#ccc',
  borderWidth: 1,
  marginBottom: 15,
  padding: 10,
  borderRadius: 10, // Rounded corners
  backgroundColor: '#f8f8f8', // Light background for the input
},
button: {
  backgroundColor: '#007bff', // Updated button color
  padding: 15,
  borderRadius: 10,
  marginTop: 10,
  alignItems: 'center',
  shadowColor: '#000', // Adding shadow to button
  shadowOffset: {
    width: 0,
    height: 2,
  },
  shadowOpacity: 0.25,
  shadowRadius: 3.84,
  elevation: 5,
},
buttonText: {
  color: 'white',
  fontWeight: 'bold',
},
modalTitle: {
  fontSize: 24,
  fontWeight: 'bold',
  marginBottom: 20,
  textAlign: 'center',
},
inputLabel: {
  fontSize: 16,
  marginBottom: 5,
  color: '#333',
},

tableRow: {
  flexDirection: 'row',
  justifyContent: 'space-between',
  alignItems: 'center',
  margin: 10,
},
deleteButton: {
  padding: 10,
  backgroundColor: 'red',
  borderRadius: 5,
  // ... other styling for the button ...
},
deleteButtonText: {
  color: 'white',
  // ... other styling for the button text ...
},
picker:{
  marginBottom: 10,
  color: 'gray'
}

});

export default Inventory;
