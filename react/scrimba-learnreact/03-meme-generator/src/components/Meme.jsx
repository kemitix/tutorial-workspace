import { useState, useEffect } from "react";

export default function Meme() {
    const [meme, setMeme] = useState({
        topText: "Shut up",
        bottomText: "and take my money",
        randomImage: "http://i.imgflip.com/1bij.jpg"
    });
    useEffect(() => {
      fetch("https://api.imgflip.com/get_memes")
          .then(res => res.json())
          .then(data => setAllMemes(data.data.memes));
    }, []);
    const [allMemes, setAllMemes] = useState([]);
    const getMemeImage = () => {
        const i = Math.floor(Math.random() * allMemes.length);
        const url = allMemes[i].url;
        console.log(`[url:${url}]`);
        setMeme(prev => ({...prev, randomImage: url}));
    };
    const changeHandler = (event) => {
        const {name, value} = event.target;
        setMeme(prevState => ({
            ...prevState,
            [name]: value
        }));
    }
    return (
        <main>
            <div className="form">
                <input 
                    type="text"
                    className="form--input"
                    value={meme.topText}
                    name="topText"
                    onChange={changeHandler}
                />
                <input
                    type="text"
                    className="form--input"
                    value={meme.bottomText}
                    onChange={changeHandler}
                    name="bottomText"
                />
                <button 
                    className="form--button"
                    onClick={getMemeImage}
                >
                    Get a new meme image 🖼
                </button>
                <div className="meme">
                    <img src={meme.randomImage} className="meme--image" />
                    <h2 className="meme--text top">{meme.topText}</h2>
                    <h2 className="meme--text bottom">{meme.bottomText}</h2>
                </div>
            </div>
        </main>
    );
}
