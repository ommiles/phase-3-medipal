import './css/App.css';
import React, { Component } from 'react';

class App extends Component {

  componentDidMount(){
    fetch('http://localhost:9292/patient/1')
      .then(res => res.json())
      .then(console.log)
      .catch((error) => {
        console.log(error);
      });
  }

  render() {
    return (
      <div className=''>
        <header className=''>
          {/* <img src={logo} className='App-logo' alt='logo' /> */}
          <h1>
            Hello World
          </h1>
          <a
            className=''
            href='https://reactjs.org'
            target='_blank'
            rel='noopener noreferrer'
          >
            Learn React
          </a>
        </header>
      </div>
    );
  }
}

export default App;
