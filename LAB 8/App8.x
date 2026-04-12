import React from "react";
import { View, Text, Image, FlatList, TouchableOpacity, StyleSheet, ScrollView } from "react-native";

const categories = ["Sneakers", "Hoodies", "Accessories"];

const products = [
  {
    id: "1",
    name: "Air Jordan 1",
    price: "₹8,999",
    image: "https://via.placeholder.com/300x200",
  },
  {
    id: "2",
    name: "Fear of God Hoodie",
    price: "₹12,999",
    image: "https://via.placeholder.com/300x200",
  },
  {
    id: "3",
    name: "BAPE Hoodie",
    price: "₹15,499",
    image: "https://via.placeholder.com/300x200",
  },
];

export default function App() {
  return (
    <ScrollView style={styles.container}>
      <Text style={styles.header}>HYPED</Text>

      {/* Categories */}
      <View style={styles.categoryRow}>
        {categories.map((cat, index) => (
          <TouchableOpacity key={index} style={styles.categoryBtn}>
            <Text style={styles.categoryText}>{cat}</Text>
          </TouchableOpacity>
        ))}
      </View>

      {/* Product List */}
      <FlatList
        data={products}
        keyExtractor={(item) => item.id}
        numColumns={2}
        renderItem={({ item }) => (
          <View style={styles.card}>
            <Image source={{ uri: item.image }} style={styles.image} />
            <Text style={styles.name}>{item.name}</Text>
            <Text style={styles.price}>{item.price}</Text>
          </View>
        )}
      />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    padding: 16,
  },
  header: {
    fontSize: 28,
    fontWeight: "bold",
    textAlign: "center",
    marginBottom: 20,
  },
  categoryRow: {
    flexDirection: "row",
    justifyContent: "space-around",
    marginBottom: 20,
  },
  categoryBtn: {
    backgroundColor: "#f2f2f2",
    padding: 10,
    borderRadius: 20,
  },
  categoryText: {
    fontSize: 14,
  },
  card: {
    flex: 1,
    margin: 8,
    backgroundColor: "#fafafa",
    borderRadius: 12,
    padding: 10,
  },
  image: {
    width: "100%",
    height: 120,
    borderRadius: 10,
  },
  name: {
    marginTop: 10,
    fontWeight: "bold",
  },
  price: {
    marginTop: 5,
    color: "#000",
  },
});
