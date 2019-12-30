import firebase from 'firebase/app'
import 'firebase/auth'

// The configuration below is not sensitive data. You can serenely add your config here
const config = {
  apiKey: 'AIzaSyAOn2apg3ye6If9YqEhVMrWCKbiKChScgg',
  authDomain: 'wikileet.firebaseapp.com',
  databaseURL: 'https://wikileet.firebaseio.com',
  projectId: 'wikileet',
  storageBucket: 'wikileet.appspot.com',
  messagingSenderId: '179879905839',
  appId: '1:179879905839:web:eeccfafc3a3fec117994da'
}

firebase.initializeApp(config)
