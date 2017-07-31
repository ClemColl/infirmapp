# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(nom: "Dujardin", prenom: "Jean", adresse: "30 Rue des pauvres", tel: "0606060606", ordonnance: "https://res.cloudinary.com/zepri/image/upload/v1501255688/jjwv7cvc4a0wz946fh9e.png")
Visite.create(date: "Lundi 13 juillet 2017", stade: "Nécrose", longeur: "13cm", largeur: "2cm", profondeur: "1cm", echelle: "1", patient_id: 1)

10.times do
	Note.create(note: "Je suis une note, et vous ?")
end