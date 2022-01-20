export default function Location({location}) {
    return (
        <div className="location">
            <div className="location--image">
                <img src={location.imageUrl} />
            </div>
            <div className="location--details">
                <div className="location--header">
                    <span className="location--pin"><img src="/images/map-pin.png" /></span>
                    <span className="location--country">{location.location}</span>
                    <span className="location--google-maps"><a href={location.googleMapsUrl}>View on Google Maps</a></span>
                </div>
                <h1 className="location--title">{location.title}</h1>
                <div className="location--dates">
                    <span className="location--start-date">{location.startDate}</span>
                    &nbsp;-&nbsp;
                    <span className="location--end-date">{location.endDate}</span>
                </div>
                <p className="location--description">{location.description}</p>
            </div>
        </div>
    );
}
