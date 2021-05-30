import './css/App.css';
import React, { Component } from 'react';

class App extends Component {

  componentDidMount(){
    fetch('localhost:9393/test')
      .then(res => res.json)
      .then(console.log)
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
