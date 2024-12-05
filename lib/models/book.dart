import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String? id;
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final double? averageRating;
  final int? ratingsCount;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  final String? shelf;

  const Book({
    this.id,
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.shelf,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
  
  final bookJson = json['book'] ?? json;

  return Book(
    id: bookJson['id'],
    title: bookJson['title'],
    subtitle: bookJson['subtitle'],
    authors: (bookJson['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    publisher: bookJson['publisher'],
    publishedDate: bookJson['publishedDate'],
    description: bookJson['description'],
    industryIdentifiers: (bookJson['industryIdentifiers'] as List<dynamic>?)
        ?.map((e) => IndustryIdentifier.fromJson(e))
        .toList(),
    readingModes: bookJson['readingModes'] != null
        ? ReadingModes.fromJson(bookJson['readingModes'])
        : null,
    pageCount: bookJson['pageCount'],
    printType: bookJson['printType'],
    categories: (bookJson['categories'] as List<dynamic>?)?.map((e) => e as String).toList(),
    averageRating: (bookJson['averageRating'] as num?)?.toDouble(),
    ratingsCount: bookJson['ratingsCount'],
    maturityRating: bookJson['maturityRating'],
    allowAnonLogging: bookJson['allowAnonLogging'],
    contentVersion: bookJson['contentVersion'],
    panelizationSummary: bookJson['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(bookJson['panelizationSummary'])
        : null,
    imageLinks: bookJson['imageLinks'] != null
        ? ImageLinks.fromJson(bookJson['imageLinks'])
        : null,
    language: bookJson['language'],
    previewLink: bookJson['previewLink'],
    infoLink: bookJson['infoLink'],
    canonicalVolumeLink: bookJson['canonicalVolumeLink'],
    shelf: bookJson['shelf'],
  );
}

  

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'authors': authors,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'description': description,
      'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson()).toList(),
      'readingModes': readingModes?.toJson(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': panelizationSummary?.toJson(),
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
      'shelf': shelf,
    };
  }

  static List<Book> fromJsonList(dynamic jsonList) {
  if (jsonList is Map<String, dynamic> && jsonList['books'] is List) {
    return (jsonList['books'] as List).map((json) => Book.fromJson(json)).toList();
  } else {
    return [];
  }
}

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    authors,
    publisher,
    publishedDate,
    description,
    industryIdentifiers,
    readingModes,
    pageCount,
    printType,
    categories,
    averageRating,
    ratingsCount,
    maturityRating,
    allowAnonLogging,
    contentVersion,
    panelizationSummary,
    imageLinks,
    language,
    previewLink,
    infoLink,
    canonicalVolumeLink,
    shelf,
  ];
}

class IndustryIdentifier {
  String? type;
  String? identifier;

  IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'],
      identifier: json['identifier'],
    );
  }

  Map<String, dynamic> toJson() => {
    'type': type,
    'identifier': identifier,
  };
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  factory ReadingModes.fromJson(Map<String, dynamic> json) {
    return ReadingModes(
      text: json['text'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
    'text': text,
    'image': image,
  };
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) {
    return PanelizationSummary(
      containsEpubBubbles: json['containsEpubBubbles'],
      containsImageBubbles: json['containsImageBubbles'],
    );
  }

  Map<String, dynamic> toJson() => {
    'containsEpubBubbles': containsEpubBubbles,
    'containsImageBubbles': containsImageBubbles,
  };
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
  };
}