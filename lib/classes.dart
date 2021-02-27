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
  String codeM, libelleM, code_ens;
  Module_(String codeM, String libelleM, int coef, String code_ens) {
    this.codeM = codeM;
    this.libelleM = libelleM;
    this.code_ens = code_ens;
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
