import { StyleSheet, View, ScrollView, Text, useColorScheme } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';

const App = () => {
  const theme = useColorScheme();
  const isDark = theme === 'dark';

  return (
    <SafeAreaView style={[styles.safe, { backgroundColor: isDark ? 'Black' : 'White' }]}>
      
      <View style={[styles.container, { backgroundColor: isDark ? 'Black' : 'Yellow' }]}>
        
        <View style={[styles.card, { backgroundColor: isDark ? 'Black' : 'Blue' }]}>
          <Text style={{ color: isDark ? 'White' : 'Black', fontWeight: 'bold' }}>
            BUDDIES
          </Text>
        </View>

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={[
            styles.scrollContent,
            { backgroundColor: isDark ? 'Black' : 'White' }
          ]}
        >
          <View style={styles.box1} />
          <View style={styles.box2} />
          <View style={styles.box3} />
          <View style={styles.box1} />
          <View style={styles.box2} />
          <View style={styles.box3} />
        </ScrollView>

      </View>

      <View style={{ padding: 10 }}>
        <Text style={{ color: isDark ? 'White' : 'Black' }}>
          HAI WELCOME!!!!
        </Text>
      </View>

    </SafeAreaView>
  );
};

export default App;

const styles = StyleSheet.create({
  safe: {
    flex: 1,
  },
  container: {
    paddingVertical: 10,
    paddingHorizontal: 5,
  },
  scrollContent: {
    gap: 10,
    padding: 10,
    borderRadius: 10,
  },
  box1: {
    width: 100,
    height: 100,
    borderRadius: 50,
    backgroundColor: 'red',
  },
  box2: {
    width: 100,
    height: 100,
    borderRadius: 50,
    backgroundColor: 'green',
  },
  box3: {
    width: 100,
    height: 100,
    borderRadius: 50,
    backgroundColor: 'blue',
  },
  card: {
    width: 120,
    height: 100,
    borderRadius: 10,
    padding: 10,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 10,
    alignSelf: 'center'
  }
});
