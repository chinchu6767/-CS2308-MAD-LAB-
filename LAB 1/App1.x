import React from 'react';
import { View, Text, StyleSheet, Image, Button, ScrollView, Alert, Linking } from 'react-native';

export default function App() {
  return (
    <ScrollView style={styles.container}>

      <View style={styles.header}>
        <Image
          source={require('./photos/1725689443055.jpg')}

          style={styles.image}
        />
        <Text style={styles.name}>Chinchana K</Text>
        <Text style={styles.role}>Computer Science Student</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.heading}>About Me</Text>
        <Text style={styles.text}>
          I am a passionate undergraduate student interested in mobile application development,
          UI design, and software engineering,with a specilization in FinTech application. 
          I am eager to learn and grow in the field of technology, and I am always looking for opportunities to apply my skills and knowledge in real-world projects.
        </Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.heading}>Skills</Text>
        <Text style={styles.text}>• C Programming</Text>
        <Text style={styles.text}>• Python</Text>
        <Text style={styles.text}>• React Native</Text>
        <Text style={styles.text}>• Power BI</Text>
      </View>

      <View style={styles.card}>
        <Text style={styles.heading}>Education</Text>
        <Text style={styles.text}>BCA – Computer Science</Text>
        <Text style={styles.text}>RV University, Bangalore</Text>
      </View>

      <View style={styles.buttonBox}>
        <View style={styles.btn}>
          <Button title="📞 Call" onPress={() => Linking.openURL('tel:9742001518')} />
        </View>

        <View style={styles.btn}>
          <Button title="📧 Email" onPress={() => Linking.openURL('mailto:chinchanak640@gmail.com')} />
        </View>

        <View style={styles.btn}>
          <Button title="💻 GitHub" onPress={() => Linking.openURL('https://github.com/chinchu6767')} />
        </View>
      </View>

    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'white',
  },
  header: {
    alignItems: 'center',
    padding: 25,
    backgroundColor: 'Red',
    borderBottomLeftRadius: 25,
    borderBottomRightRadius: 25,
  },
  image: {
    width: 150,
    height: 220,
    marginBottom: 15,
  },
  name: {
    fontSize: 24,
    fontWeight: 'bold',
    color: 'Black',
  },
  role: {
    fontSize: 14,
    color: 'Yellow',
  },
  card: {
    backgroundColor: 'Purple',
    margin: 12,
    padding: 15,
    borderRadius: 12,
    elevation: 3,
  },
  heading: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 6,
  },
  text: {
    fontSize: 14,
    lineHeight: 20,
  },
  buttonBox: {
    margin: 10,
  },
  btn: {
    marginVertical: 6,
    borderRadius: 10,
    overflow: 'hidden',
  },
});
