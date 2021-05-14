import PlantCard from "./PlantCard";

function PlantList({ plants }) {
  return (
    <ul className="cards">
      {plants.map((plant) => {
        return <PlantCard key={plant.id} plant={plant} />;
      })}
    </ul>
  );
}

export default PlantList;
