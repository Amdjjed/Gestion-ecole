class Etudiant_ {
  int matricule, groupe;
  String nom, prenom, codeS;
  Etudiant_(
      int matricule, String nom, String prenom, String codeS, int groupe) {
    this.matricule = matricule;
    this.nom = nom;
    this.prenom = prenom;
    this.codeS = codeS;
    this.groupe = groupe;
  }
}

class Module_ {
  int coef;
  String codeM, libelleM, spe;
  Module_(String codeM, String libelleM, int coef, String spe) {
    this.codeM = codeM;
    this.libelleM = libelleM;
    this.spe = spe;
    this.coef = coef;
  }
}

class Examen_ {
  String codeM;
  int matricule, note;
  Examen_(String codeM, int matricule, int note) {
    this.codeM = codeM;
    this.matricule = matricule;
    this.note = note;
  }
}

class PrimitiveWrapper {
  var value;
  PrimitiveWrapper(this.value);
}
