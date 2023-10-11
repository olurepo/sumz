import React, { Component } from 'react';

import Demo from './components/Demo';
import Hero from './components/Hero';
import './App.css';

const app = () => {
  return (
    <main>
      <div className="main">
        <div className="gradient" />
      </div>

      <div className="app">
        <Hero />
        <Demo />
      </div>
    </main>
  )
}

export default app
