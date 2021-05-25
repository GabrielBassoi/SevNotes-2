// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_note_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditNoteStore on _EditNoteStore, Store {
  final _$titleAtom = Atom(name: '_EditNoteStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$bodyAtom = Atom(name: '_EditNoteStore.body');

  @override
  String get body {
    _$bodyAtom.reportRead();
    return super.body;
  }

  @override
  set body(String value) {
    _$bodyAtom.reportWrite(value, super.body, () {
      super.body = value;
    });
  }

  final _$isFavoriteAtom = Atom(name: '_EditNoteStore.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$creationDateAtom = Atom(name: '_EditNoteStore.creationDate');

  @override
  String get creationDate {
    _$creationDateAtom.reportRead();
    return super.creationDate;
  }

  @override
  set creationDate(String value) {
    _$creationDateAtom.reportWrite(value, super.creationDate, () {
      super.creationDate = value;
    });
  }

  final _$_EditNoteStoreActionController =
      ActionController(name: '_EditNoteStore');

  @override
  void setData(Note note) {
    final _$actionInfo = _$_EditNoteStoreActionController.startAction(
        name: '_EditNoteStore.setData');
    try {
      return super.setData(note);
    } finally {
      _$_EditNoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_EditNoteStoreActionController.startAction(
        name: '_EditNoteStore.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_EditNoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBody(String value) {
    final _$actionInfo = _$_EditNoteStoreActionController.startAction(
        name: '_EditNoteStore.setBody');
    try {
      return super.setBody(value);
    } finally {
      _$_EditNoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFavorite() {
    final _$actionInfo = _$_EditNoteStoreActionController.startAction(
        name: '_EditNoteStore.setFavorite');
    try {
      return super.setFavorite();
    } finally {
      _$_EditNoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
body: ${body},
isFavorite: ${isFavorite},
creationDate: ${creationDate}
    ''';
  }
}
