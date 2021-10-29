process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyAd8PslkOP7Hkn_eT19WLlesqoVgVPpbEQ",
  authDomain: "illustcollection.firebaseapp.com",
  projectId: "illustcollection",
  storageBucket: "illustcollection.appspot.com",
  messagingSenderId: "910772806006",
  appId: "1:910772806006:web:78a4069206918d45b0da57"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);