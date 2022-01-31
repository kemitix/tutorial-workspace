import './App.css';
import Navbar from './components/Navbar';
import Main from './components/Main';

function App() {
  return (
    <div className="container">
      <Navbar />
      <Main />
    </div>
  );
}

export default App;
import Navbar from "./components/Navbar"
import Main from "./components/Main"

export default function App() {
    return (
        <div className="container">
            <Navbar />
            <Main />
        </div>
    )
}