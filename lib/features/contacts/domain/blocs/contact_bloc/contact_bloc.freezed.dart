// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEventCopyWith<$Res> {
  factory $ContactEventCopyWith(
          ContactEvent value, $Res Function(ContactEvent) then) =
      _$ContactEventCopyWithImpl<$Res, ContactEvent>;
}

/// @nodoc
class _$ContactEventCopyWithImpl<$Res, $Val extends ContactEvent>
    implements $ContactEventCopyWith<$Res> {
  _$ContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactsLoadedImplCopyWith<$Res> {
  factory _$$ContactsLoadedImplCopyWith(_$ContactsLoadedImpl value,
          $Res Function(_$ContactsLoadedImpl) then) =
      __$$ContactsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAscending, String searchQuery});
}

/// @nodoc
class __$$ContactsLoadedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactsLoadedImpl>
    implements _$$ContactsLoadedImplCopyWith<$Res> {
  __$$ContactsLoadedImplCopyWithImpl(
      _$ContactsLoadedImpl _value, $Res Function(_$ContactsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAscending = null,
    Object? searchQuery = null,
  }) {
    return _then(_$ContactsLoadedImpl(
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactsLoadedImpl implements ContactsLoaded {
  const _$ContactsLoadedImpl({this.isAscending = true, this.searchQuery = ''});

  @override
  @JsonKey()
  final bool isAscending;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'ContactEvent.contactsLoaded(isAscending: $isAscending, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsLoadedImpl &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscending, searchQuery);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsLoadedImplCopyWith<_$ContactsLoadedImpl> get copyWith =>
      __$$ContactsLoadedImplCopyWithImpl<_$ContactsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactsLoaded(isAscending, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactsLoaded?.call(isAscending, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactsLoaded != null) {
      return contactsLoaded(isAscending, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactsLoaded != null) {
      return contactsLoaded(this);
    }
    return orElse();
  }
}

abstract class ContactsLoaded implements ContactEvent {
  const factory ContactsLoaded(
      {final bool isAscending,
      final String searchQuery}) = _$ContactsLoadedImpl;

  bool get isAscending;
  String get searchQuery;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsLoadedImplCopyWith<_$ContactsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactAddedImplCopyWith<$Res> {
  factory _$$ContactAddedImplCopyWith(
          _$ContactAddedImpl value, $Res Function(_$ContactAddedImpl) then) =
      __$$ContactAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ContactAddedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactAddedImpl>
    implements _$$ContactAddedImplCopyWith<$Res> {
  __$$ContactAddedImplCopyWithImpl(
      _$ContactAddedImpl _value, $Res Function(_$ContactAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$ContactAddedImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$ContactAddedImpl implements ContactAdded {
  const _$ContactAddedImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactEvent.contactAdded(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactAddedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactAddedImplCopyWith<_$ContactAddedImpl> get copyWith =>
      __$$ContactAddedImplCopyWithImpl<_$ContactAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactAdded(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactAdded?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactAdded != null) {
      return contactAdded(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactAdded != null) {
      return contactAdded(this);
    }
    return orElse();
  }
}

abstract class ContactAdded implements ContactEvent {
  const factory ContactAdded(final Contact contact) = _$ContactAddedImpl;

  Contact get contact;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactAddedImplCopyWith<_$ContactAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactUpdatedImplCopyWith<$Res> {
  factory _$$ContactUpdatedImplCopyWith(_$ContactUpdatedImpl value,
          $Res Function(_$ContactUpdatedImpl) then) =
      __$$ContactUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ContactUpdatedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactUpdatedImpl>
    implements _$$ContactUpdatedImplCopyWith<$Res> {
  __$$ContactUpdatedImplCopyWithImpl(
      _$ContactUpdatedImpl _value, $Res Function(_$ContactUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$ContactUpdatedImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$ContactUpdatedImpl implements ContactUpdated {
  const _$ContactUpdatedImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactEvent.contactUpdated(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactUpdatedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactUpdatedImplCopyWith<_$ContactUpdatedImpl> get copyWith =>
      __$$ContactUpdatedImplCopyWithImpl<_$ContactUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactUpdated(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactUpdated?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactUpdated != null) {
      return contactUpdated(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactUpdated != null) {
      return contactUpdated(this);
    }
    return orElse();
  }
}

abstract class ContactUpdated implements ContactEvent {
  const factory ContactUpdated(final Contact contact) = _$ContactUpdatedImpl;

  Contact get contact;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactUpdatedImplCopyWith<_$ContactUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactDeletedImplCopyWith<$Res> {
  factory _$$ContactDeletedImplCopyWith(_$ContactDeletedImpl value,
          $Res Function(_$ContactDeletedImpl) then) =
      __$$ContactDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ContactDeletedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactDeletedImpl>
    implements _$$ContactDeletedImplCopyWith<$Res> {
  __$$ContactDeletedImplCopyWithImpl(
      _$ContactDeletedImpl _value, $Res Function(_$ContactDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ContactDeletedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContactDeletedImpl implements ContactDeleted {
  const _$ContactDeletedImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ContactEvent.contactDeleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDeletedImplCopyWith<_$ContactDeletedImpl> get copyWith =>
      __$$ContactDeletedImplCopyWithImpl<_$ContactDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactDeleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactDeleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactDeleted != null) {
      return contactDeleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactDeleted != null) {
      return contactDeleted(this);
    }
    return orElse();
  }
}

abstract class ContactDeleted implements ContactEvent {
  const factory ContactDeleted(final int id) = _$ContactDeletedImpl;

  int get id;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDeletedImplCopyWith<_$ContactDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactSelectedImplCopyWith<$Res> {
  factory _$$ContactSelectedImplCopyWith(_$ContactSelectedImpl value,
          $Res Function(_$ContactSelectedImpl) then) =
      __$$ContactSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ContactSelectedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactSelectedImpl>
    implements _$$ContactSelectedImplCopyWith<$Res> {
  __$$ContactSelectedImplCopyWithImpl(
      _$ContactSelectedImpl _value, $Res Function(_$ContactSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
  }) {
    return _then(_$ContactSelectedImpl(
      null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
    ));
  }

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc

class _$ContactSelectedImpl implements ContactSelected {
  const _$ContactSelectedImpl(this.contact);

  @override
  final Contact contact;

  @override
  String toString() {
    return 'ContactEvent.contactSelected(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactSelectedImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactSelectedImplCopyWith<_$ContactSelectedImpl> get copyWith =>
      __$$ContactSelectedImplCopyWithImpl<_$ContactSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactSelected(contact);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactSelected?.call(contact);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactSelected != null) {
      return contactSelected(contact);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactSelected != null) {
      return contactSelected(this);
    }
    return orElse();
  }
}

abstract class ContactSelected implements ContactEvent {
  const factory ContactSelected(final Contact contact) = _$ContactSelectedImpl;

  Contact get contact;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactSelectedImplCopyWith<_$ContactSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactClearedImplCopyWith<$Res> {
  factory _$$ContactClearedImplCopyWith(_$ContactClearedImpl value,
          $Res Function(_$ContactClearedImpl) then) =
      __$$ContactClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactClearedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactClearedImpl>
    implements _$$ContactClearedImplCopyWith<$Res> {
  __$$ContactClearedImplCopyWithImpl(
      _$ContactClearedImpl _value, $Res Function(_$ContactClearedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactClearedImpl implements ContactCleared {
  const _$ContactClearedImpl();

  @override
  String toString() {
    return 'ContactEvent.contactCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactCleared != null) {
      return contactCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactCleared != null) {
      return contactCleared(this);
    }
    return orElse();
  }
}

abstract class ContactCleared implements ContactEvent {
  const factory ContactCleared() = _$ContactClearedImpl;
}

/// @nodoc
abstract class _$$ContactsSearchedImplCopyWith<$Res> {
  factory _$$ContactsSearchedImplCopyWith(_$ContactsSearchedImpl value,
          $Res Function(_$ContactsSearchedImpl) then) =
      __$$ContactsSearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$ContactsSearchedImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$ContactsSearchedImpl>
    implements _$$ContactsSearchedImplCopyWith<$Res> {
  __$$ContactsSearchedImplCopyWithImpl(_$ContactsSearchedImpl _value,
      $Res Function(_$ContactsSearchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$ContactsSearchedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactsSearchedImpl implements ContactsSearched {
  const _$ContactsSearchedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ContactEvent.contactsSearched(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsSearchedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsSearchedImplCopyWith<_$ContactsSearchedImpl> get copyWith =>
      __$$ContactsSearchedImplCopyWithImpl<_$ContactsSearchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAscending, String searchQuery)
        contactsLoaded,
    required TResult Function(Contact contact) contactAdded,
    required TResult Function(Contact contact) contactUpdated,
    required TResult Function(int id) contactDeleted,
    required TResult Function(Contact contact) contactSelected,
    required TResult Function() contactCleared,
    required TResult Function(String query) contactsSearched,
  }) {
    return contactsSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult? Function(Contact contact)? contactAdded,
    TResult? Function(Contact contact)? contactUpdated,
    TResult? Function(int id)? contactDeleted,
    TResult? Function(Contact contact)? contactSelected,
    TResult? Function()? contactCleared,
    TResult? Function(String query)? contactsSearched,
  }) {
    return contactsSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAscending, String searchQuery)? contactsLoaded,
    TResult Function(Contact contact)? contactAdded,
    TResult Function(Contact contact)? contactUpdated,
    TResult Function(int id)? contactDeleted,
    TResult Function(Contact contact)? contactSelected,
    TResult Function()? contactCleared,
    TResult Function(String query)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactsSearched != null) {
      return contactsSearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsLoaded value) contactsLoaded,
    required TResult Function(ContactAdded value) contactAdded,
    required TResult Function(ContactUpdated value) contactUpdated,
    required TResult Function(ContactDeleted value) contactDeleted,
    required TResult Function(ContactSelected value) contactSelected,
    required TResult Function(ContactCleared value) contactCleared,
    required TResult Function(ContactsSearched value) contactsSearched,
  }) {
    return contactsSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoaded value)? contactsLoaded,
    TResult? Function(ContactAdded value)? contactAdded,
    TResult? Function(ContactUpdated value)? contactUpdated,
    TResult? Function(ContactDeleted value)? contactDeleted,
    TResult? Function(ContactSelected value)? contactSelected,
    TResult? Function(ContactCleared value)? contactCleared,
    TResult? Function(ContactsSearched value)? contactsSearched,
  }) {
    return contactsSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoaded value)? contactsLoaded,
    TResult Function(ContactAdded value)? contactAdded,
    TResult Function(ContactUpdated value)? contactUpdated,
    TResult Function(ContactDeleted value)? contactDeleted,
    TResult Function(ContactSelected value)? contactSelected,
    TResult Function(ContactCleared value)? contactCleared,
    TResult Function(ContactsSearched value)? contactsSearched,
    required TResult orElse(),
  }) {
    if (contactsSearched != null) {
      return contactsSearched(this);
    }
    return orElse();
  }
}

abstract class ContactsSearched implements ContactEvent {
  const factory ContactsSearched(final String query) = _$ContactsSearchedImpl;

  String get query;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsSearchedImplCopyWith<_$ContactsSearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get isAscending => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call(
      {List<Contact> contacts,
      Contact? contact,
      bool isLoading,
      String searchQuery,
      bool isAscending,
      String? errorMessage});

  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? contact = freezed,
    Object? isLoading = null,
    Object? searchQuery = null,
    Object? isAscending = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactStateImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactStateImplCopyWith(
          _$ContactStateImpl value, $Res Function(_$ContactStateImpl) then) =
      __$$ContactStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Contact> contacts,
      Contact? contact,
      bool isLoading,
      String searchQuery,
      bool isAscending,
      String? errorMessage});

  @override
  $ContactCopyWith<$Res>? get contact;
}

/// @nodoc
class __$$ContactStateImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactStateImpl>
    implements _$$ContactStateImplCopyWith<$Res> {
  __$$ContactStateImplCopyWithImpl(
      _$ContactStateImpl _value, $Res Function(_$ContactStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? contact = freezed,
    Object? isLoading = null,
    Object? searchQuery = null,
    Object? isAscending = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ContactStateImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContactStateImpl implements _ContactState {
  const _$ContactStateImpl(
      {final List<Contact> contacts = const [],
      this.contact,
      this.isLoading = false,
      this.searchQuery = '',
      this.isAscending = false,
      this.errorMessage})
      : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final Contact? contact;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool isAscending;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ContactState(contacts: $contacts, contact: $contact, isLoading: $isLoading, searchQuery: $searchQuery, isAscending: $isAscending, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contacts),
      contact,
      isLoading,
      searchQuery,
      isAscending,
      errorMessage);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      __$$ContactStateImplCopyWithImpl<_$ContactStateImpl>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState(
      {final List<Contact> contacts,
      final Contact? contact,
      final bool isLoading,
      final String searchQuery,
      final bool isAscending,
      final String? errorMessage}) = _$ContactStateImpl;

  @override
  List<Contact> get contacts;
  @override
  Contact? get contact;
  @override
  bool get isLoading;
  @override
  String get searchQuery;
  @override
  bool get isAscending;
  @override
  String? get errorMessage;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactStateImplCopyWith<_$ContactStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
