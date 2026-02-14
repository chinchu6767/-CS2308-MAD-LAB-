import React from "react";
import { View, Text, Image, ScrollView, StyleSheet } from "react-native";

export default function App() {
  return (
    <ScrollView style={styles.container}>
      
      <Text style={styles.title}>Bangalore Hotels</Text>

      {/* Hotel 1 */}
      <View style={styles.card}>
        <Image
          source={{ uri: "https://images.unsplash.com/photo-1578683010236-d716f9a3f461" }}
          style={styles.image}
        />
        <View style={styles.info}>
          <Text style={styles.name}>Taj West End</Text>
          <Text style={styles.location}>📍 Bangalore</Text>
          <Text style={styles.rating}>★★★★☆</Text>
        </View>
        <Text style={styles.price}>₹12,000</Text>
      </View>

      {/* Hotel 2 */}
      <View style={styles.card}>
        <Image
          source={{ uri: "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb" }}
          style={styles.image}
        />
        <View style={styles.info}>
          <Text style={styles.name}>The Leela Palace</Text>
          <Text style={styles.location}>📍 Bangalore</Text>
          <Text style={styles.rating}>★★★★★</Text>
        </View>
        <Text style={styles.price}>₹18,000</Text>
      </View>

      {/* Hotel 3 */}
      <View style={styles.card}>
        <Image
          source={{ uri: "https://images.unsplash.com/photo-1505691938895-1758d7feb511" }}
          style={styles.image}
        />
        <View style={styles.info}>
          <Text style={styles.name}>ITC Gardenia</Text>
          <Text style={styles.location}>📍 Bangalore</Text>
          <Text style={styles.rating}>★★★★☆</Text>
        </View>
        <Text style={styles.price}>₹10,500</Text>
      </View>

      {/* Hotel 4 */}
      <View style={styles.card}>
        <Image
          source={{ uri: "https://images.unsplash.com/photo-1566073771259-6a8506099945" }}
          style={styles.image}
        />
        <View style={styles.info}>
          <Text style={styles.name}>Radisson Blu</Text>
          <Text style={styles.location}>📍 Bangalore</Text>
          <Text style={styles.rating}>★★★★☆</Text>
        </View>
        <Text style={styles.price}>₹9,000</Text>
      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    padding: 10,
  },

  title: {
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 10,
  },

  card: {
    flexDirection: "row",
    backgroundColor: "#fff",
    padding: 10,
    borderRadius: 10,
    marginBottom: 12,
    elevation: 3,
  },

  image: {
    width: 70,
    height: 70,
    borderRadius: 10,
  },

  info: {
    flex: 1,
    marginLeft: 10,
  },

  name: {
    fontSize: 16,
    fontWeight: "bold",
  },

  location: {
    fontSize: 12,
    color: "gray",
  },

  rating: {
    color: "gold",
  },

  price: {
    color: "purple",
    fontWeight: "bold",
    alignSelf: "center",
  },
});
