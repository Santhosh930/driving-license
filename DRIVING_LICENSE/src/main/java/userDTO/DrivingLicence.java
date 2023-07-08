package userDTO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class DrivingLicence {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(unique = true)
	private String licence_number;
	private String address;
	@Column(nullable = false)
	private String vehicle_type;// car or Bike
	@OneToOne(mappedBy = "driving")
	private Person person;

	public String getLicence_number() {
		return licence_number;
	}

	public void setLicence_number(String licence_number) {
		this.licence_number = licence_number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public void setVehicle_type(String vehicle) {
		this.vehicle_type = vehicle;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	@Override
	public String toString() {
		return "DrivingLicence [licence_number=" + licence_number + ", address=" + address + ", vehicle_type="
				+ vehicle_type + "]";
	}

}
