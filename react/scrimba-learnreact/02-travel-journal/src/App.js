import './App.css';
import Locations from './components/Locations';
import Navbar from './components/Navbar';
import data from './data';

function App() {
  return (
    <>
      <Navbar />
      <Locations data={data} />
    </>
  );
}

export default App;
