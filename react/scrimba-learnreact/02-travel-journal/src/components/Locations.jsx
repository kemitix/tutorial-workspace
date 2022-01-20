import Location from "./Location";

export default function Locations(props) {
    return (
        <main className="locations">
            {props.data.map(location => <Location key={location.id} location={location} />)}
        </main>
    );
}
