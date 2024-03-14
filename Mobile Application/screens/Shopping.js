import React, { useState, useEffect } from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';
import AsyncStorage from '@react-native-async-storage/async-storage';

const Shopping = () => {
  const [shoppingList, setShoppingList] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const jsonValue = await AsyncStorage.getItem('@inventory');
        const data = jsonValue != null ? JSON.parse(jsonValue) : [];
        // Filter to show only items with expiryDays equal to 0
        const filteredData = data.filter(item => item.expiryDays > 0);
        setShoppingList(filteredData);
      } catch (e) {
        console.error('Error fetching data from AsyncStorage:', e);
      }
    };

    fetchData();
  }, []);

  return (
    <ScrollView contentContainerStyle={styles.scrollViewContent}>
      {shoppingList.map((item, index) => (
        <View key={index} style={styles.dataBox}>
          <View style={styles.dataBoxHeader}>
            <Text style={styles.dataBoxHeaderText}>Item {index + 1}</Text>
          </View>
          <View style={styles.tableRow}>
            <View style={styles.details}>
              <Text style={styles.detailsHeader}>{item.itemName}</Text>
            </View>
          </View>
        </View>
      ))}
    </ScrollView>
  );
};

// ... existing styles ...

  
  const styles = StyleSheet.create({
    scrollViewContent: {
      flexDirection: 'row',
      flexWrap: 'wrap',
      justifyContent: 'space-evenly',
    },
    dataBox: {
      margin: 10,
      backgroundColor: 'white',
      borderRadius: 10,
      padding: 10,
      flexBasis: '40%', // Adjust the width as needed
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
      borderWidth: 1,
      borderColor: '#ccc',
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
  });
  
  export default Shopping;