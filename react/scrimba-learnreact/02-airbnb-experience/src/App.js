import './App.css';
import Card from './components/Card';
import Hero from './components/Hero';
import Navbar from './components/Navbar';
import data from './data';

export default function App() {
  return (
    <>
      <Navbar />
      <Hero />
      <section className='cards'>
        {data.map(item =>
          <Card 
            key={item.id}
            {...item}
          />)}
      </section>
    </>
  );
}
