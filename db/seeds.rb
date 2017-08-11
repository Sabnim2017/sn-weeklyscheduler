Color.destroy_all
User.destroy_all

Color.create!([
	{name: "green", code: "#009933"},
	{name: "pink", code: "#e600ac"},
	{name: "orange", code: "#ff6600"},
	{name: "blue", code: "#0000b3"},
	{name: "red", code: "#cc0000"},
	{name: "black", code: "#000000"}
	])

User.create!([
	{name: "pondnimtz", password: "itworks"}
	])
