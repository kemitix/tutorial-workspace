import './App.css';
import Info from './components/Info';
import photo from './images/Profile-Photo.jpg';
import About from './components/About';
import Interests from './components/Interests';
import Footer from './components/Footer';

const onClickEmail = () => {
  console.log(`Clicked Email`);
};

const onClickLinkedin = () => {
  console.log(`Clicked Linkedin`);
};

export default function App() {
  return (
    <div className="App">
      <div className='content'>
        <Info 
          photo={photo}
          name="Paul Campbell"
          job="Software Engineer"
          website="kemitix.github.io"
          url="https://kemitix.github.io/"
          onClickEmail={onClickEmail}
          onClickLinkedin={onClickLinkedin} />
        <About />
        <Interests />
        <Footer />
      </div>
    </div>
  );
}
