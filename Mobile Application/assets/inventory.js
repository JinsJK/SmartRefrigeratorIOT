import yogurt from '../assets/yogurt.jpeg'
import juice from '../assets/juice.webp'; // Replace with the actual file name and extension
import cream from '../assets/cream.jpeg'; // Replace with the actual file name and extension
import chocolate from '../assets/chocolate.jpeg'; 

export const database = [
  {
    id: 1,
    imageUri: juice, // Replace with the actual image URL
    itemName: 'Orange Juice',
    expiryDays: /* Set the appropriate expiry days */ 3,
    barcode: 4056489126751,
  },
  {
    id: 2,
    imageUri: cream, // Replace with the actual image URL
    itemName: 'Fresh Cream',
    expiryDays: /* Set the appropriate expiry days */ 5,
    barcode: 4056489115021,
  },
  {
    id: 3,
    imageUri: yogurt, // Replace with the actual image URL
    itemName: 'Yogurt',
    expiryDays: 7,
    barcode: 4056489028987,
  },
  {
    id: 4,
    imageUri: chocolate, // Replace with the actual image URL
    itemName: 'Chocolate',
    expiryDays: /* Set the appropriate expiry days */ 10,
    barcode: 4000417622211,
  },
      
      
    // Add more data objects as needed
  ];