import { NavigationContainer } from '@react-navigation/native';
import { StatusBar } from 'expo-status-bar';
import { SafeAreaView, StyleSheet, Text, View } from 'react-native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import HomeScreen from './screens/HomeScreen';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';
import Inventory from './screens/Inventory';
import Shopping from './screens/Shopping';
import { useEffect } from 'react';
import * as Device from 'expo-device';
import * as Notifications from 'expo-notifications';

const Tab = createBottomTabNavigator();


export default function App() {

  useEffect(() => {
    schedulePushNotification();
  }, []);

  Notifications.setNotificationHandler({
    handleNotification: async () => ({
      shouldShowAlert: true,
      shouldPlaySound: false,
      shouldSetBadge: false,
    }),
  });

  async function schedulePushNotification() {
    const trigger = new Date();
    trigger.setHours(13, 22, 0, 0); // Set to 13:06
    if (trigger < new Date()) {
      trigger.setDate(trigger.getDate() + 1); // Schedule for the next day if time has passed
    }
  
    await Notifications.scheduleNotificationAsync({
      content: {
        title: "Daily Inventory Check",
        body: "Hello! Just a quick reminder to update your inventory. Have a great day!",
      },
      trigger: {
        hour: trigger.getHours(),
        minute: trigger.getMinutes(),
        repeats: true,
      },
    });
  }
  

  return (
    <NavigationContainer>
      <Tab.Navigator screenOptions={{
        tabBarActiveTintColor: '#e953e63',
      }} >
       <Tab.Screen name="Home" options={{
          tabBarLabel: 'Home',
          headerShown: false,
          tabBarIcon: ({ color, size }) => (
            <MaterialCommunityIcons name="home" color={color} size={size} />
          ),
        }} component={HomeScreen} />
       <Tab.Screen name="View Inside" component={Inventory} options={{
          tabBarLabel: 'Inventory',
          tabBarIcon: ({ color, size }) => (
            <MaterialCommunityIcons name="receipt" color={color} size={size} />
          ),
        }} />
       {/* <Tab.Screen name="Shopping list" options={{
          tabBarLabel: 'Shopping list',
          tabBarIcon: ({ color, size }) => (
            <MaterialCommunityIcons name="shopping" color={color} size={size} />
          ),
          tabBarBadge: 3,
        }} component={Shopping} /> */}
    </Tab.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
