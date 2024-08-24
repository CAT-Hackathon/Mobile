import 'package:equatable/equatable.dart';

class CompaniesResponse extends Equatable {
  final List<Company> companies;

  const CompaniesResponse({
    required this.companies,
  });

  factory CompaniesResponse.fromJson(Map<String, dynamic> json) {
    return CompaniesResponse(
      companies: List<Company>.from(
        (json['companies'] ?? []).map((company) => Company.fromJson(company)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'companies': companies.map((company) => company.toJson()).toList(),
    };
  }

  const CompaniesResponse.empty() : companies = const [];

  CompaniesResponse copyWith({
    List<Company>? companies,
  }) {
    return CompaniesResponse(
      companies: companies ?? this.companies,
    );
  }

  @override
  List<Object?> get props => [companies];
}

class Company extends Equatable {
  final int id;
  final String email;
  final String name;
  final String phone;
  final String address;
  final String website;
  final String description;
  final String industry;
  final String? academicYear;
  final String logo;
  final String createdAt;
  final String updatedAt;

  const Company({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.address,
    required this.website,
    required this.description,
    required this.industry,
    required this.academicYear,
    required this.logo,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'] ?? 0,
      email: json['email'] ?? 'Not available',
      name: json['name'] ?? '',
      phone: json['phone'] ?? 'Not available',
      address: json['address'] ?? '',
      website: json['website'] ?? '',
      description: json['description'] ?? '',
      industry: json['industry'] ?? '',
      academicYear: json['academic_year'],
      logo: json['logo'] ?? '',
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'address': address,
      'website': website,
      'description': description,
      'industry': industry,
      'academic_year': academicYear,
      'logo': logo,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  const Company.empty()
      : id = 0,
        email = 'Not available',
        name = '',
        phone = 'Not available',
        address = '',
        website = '',
        description = '',
        industry = '',
        academicYear = null,
        logo = '',
        createdAt = '',
        updatedAt = '';

  Company copyWith({
    int? id,
    String? email,
    String? name,
    String? phone,
    String? address,
    String? website,
    String? description,
    String? industry,
    String? academicYear,
    String? logo,
    String? createdAt,
    String? updatedAt,
  }) {
    return Company(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      website: website ?? this.website,
      description: description ?? this.description,
      industry: industry ?? this.industry,
      academicYear: academicYear ?? this.academicYear,
      logo: logo ?? this.logo,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        phone,
        address,
        website,
        description,
        industry,
        academicYear,
        logo,
        createdAt,
        updatedAt,
      ];
}
