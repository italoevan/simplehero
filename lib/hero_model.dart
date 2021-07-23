

class HeroModel {
  String name;
  String image;
  String _uniqueId;

  HeroModel(this.name, this.image) {
    generateUniqueId();
  }

  generateUniqueId() {
    _uniqueId = DateTime.now().toString();
  }

  String get uniqueId => this._uniqueId;
}
