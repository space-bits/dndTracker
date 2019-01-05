import React, { Component } from 'react';
import './App.css';
// eslint-disable-next-line
import Spell from './Spell.js';
// eslint-disable-next-line
import CharacterSheet from './CharacterSheet';

class App extends Component {
	constructor(props) {
    super(props);
    this.state = {
      data: []
    };
  }

  componentDidMount() {
		console.log(`App mounted correctly.`);
  }


  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Welcome to DND Tracker</h1>
        </header>
			</div>
    );
  }
}

export default App;

