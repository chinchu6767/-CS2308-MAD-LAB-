import React from "react";
import { View, Text, ScrollView, StyleSheet, Image } from "react-native";

export default function App() {
  return (
    <ScrollView style={styles.container}>

      <View style={styles.header}>
        <Text style={styles.headerText}>Payment</Text>
      </View>

      <Text style={styles.timerText}>
        Complete payment within <Text style={{ color: "red" }}>00:60:00</Text>
      </Text>

      <Text style={styles.sectionTitle}>Bank Transfer</Text>

      <View style={styles.card}>
        <Text style={styles.logo}>🏦</Text>
        <Text style={styles.bankName}>State Bank of India (SBI)</Text>
        <Text>➤</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.logo}>🏦</Text>
        <Text style={styles.bankName}>Canara Bank</Text>
        <Text>➤</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.logo}>🏦</Text>
        <Text style={styles.bankName}>Karnataka Bank</Text>
        <Text>➤</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.logo}>🏦</Text>
        <Text style={styles.bankName}>Union Bank</Text>
        <Text>➤</Text>
      </View>

      <Text style={styles.sectionTitle}>Virtual Account</Text>

      <View style={styles.card}>
        <Text style={styles.logo}>💳</Text>
        <Text style={styles.bankName}>SBI Virtual Account</Text>
        <Text>➤</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.logo}>💳</Text>
        <Text style={styles.bankName}>Canara Virtual Account</Text>
        <Text>➤</Text>
      </View>

      <Text style={styles.sectionTitle}>Pay Later / EMI</Text>

      <View style={styles.card}>
        <Text style={styles.logo}>📱</Text>
        <Text style={styles.bankName}>Kredivo</Text>
        <Text>➤</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.logo}>💰</Text>
        <Text style={styles.bankName}>Simple EMI Plan</Text>
        <Text>➤</Text>
      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "White",
  },

  header: {
    backgroundColor: "Purple",
    padding: 15,
  },

  headerText: {
    color: "White",
    fontSize: 18,
    fontWeight: "bold",
    textAlign: "center",
  },

  timerText: {
    textAlign: "center",
    marginVertical: 10,
    fontSize: 14,
  },

  sectionTitle: {
    fontSize: 16,
    fontWeight: "bold",
    marginTop: 15,
    marginBottom: 8,
    marginLeft: 10,
  },

  card: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    backgroundColor: "White",
    padding: 12,
    marginHorizontal: 10,
    marginBottom: 8,
    borderRadius: 8,
    elevation: 2,
  },

  logo: {
    fontSize: 22,
  },

  bankName: {
    flex: 1,
    marginLeft: 10,
    fontSize: 14,
  },
});
