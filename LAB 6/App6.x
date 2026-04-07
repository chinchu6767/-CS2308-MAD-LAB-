import React from "react";
import { View, Text, FlatList, StyleSheet } from "react-native";

const students = require("./students.json");

export default function App() {
  return (
    <View style={styles.container}>
      
      {/* Header */}
      <View style={styles.header}>
        <Text style={styles.headerText}>🎓 Students List</Text>
      </View>

      {/* List */}
      <FlatList
        data={students}
        keyExtractor={(item) => item.id.toString()}
        contentContainerStyle={{ padding: 10 }}
        renderItem={({ item }) => (
          <View style={styles.card}>
            
            <Text style={styles.name}>{item.name}</Text>

            <Text style={styles.subText}>
              {item.grade} - {item.section}
            </Text>

            <Text style={styles.detail}>
              Grade: {item.grade}
            </Text>

            <Text style={styles.detail}>
              Section: {item.section}
            </Text>

          </View>
        )}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#EAF3FB",
  },

  header: {
    backgroundColor: "#6CA6CD",
    padding: 15,
    alignItems: "center",
  },

  headerText: {
    fontSize: 22,
    fontWeight: "bold",
    color: "#fff",
  },

  card: {
    backgroundColor: "#fff",
    padding: 15,
    borderRadius: 10,
    marginBottom: 12,
    elevation: 3,
  },

  name: {
    fontSize: 20,
    fontWeight: "bold",
    marginBottom: 5,
  },

  subText: {
    fontSize: 16,
    color: "gray",
    marginBottom: 8,
  },

  detail: {
    fontSize: 14,
    color: "#333",
  },
});