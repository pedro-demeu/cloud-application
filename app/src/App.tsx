import React from 'react';
import './App.css';

const App: React.FC = () => {
  return (
    <div className="app">
      <div className="container">
        <div className="success-card">
          <div className="neon-border">
            <h1 className="title">🚀 Deploy Successful!</h1>
            <p className="message">
              Sua aplicação React está rodando perfeitamente na AWS!
            </p>
            <div className="status">
              <span className="status-dot"></span>
              <span>Sistema Online</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default App;