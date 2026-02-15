import React from 'react';
import { Text, Image, Button, TouchableOpacity, Alert, SafeAreaView, View, Pressable } from "react-native";

const App = () => { 
  return (
   <SafeAreaView>
      <Text>Hey Buddies</Text>

      <Image
        source={{ uri:"./photo/20150222_174506.jpg" }}
        style={{ width: 300, height: 200 }}
      />

      <Button title="CLICK ME" onPress={() => Alert.alert("You Clicked Me")} />
      
      <TouchableOpacity onPress={() => Alert.alert("Me Touchable Clicked")}>
        <Text> Me Touchable</Text>
      </TouchableOpacity> 

      <Pressable onLongPress={() => Alert.alert("You Long Pressed Me")}>
        <Text>Me Pressable</Text>
      </Pressable>
      
  </SafeAreaView>
  )
}

export default App;
