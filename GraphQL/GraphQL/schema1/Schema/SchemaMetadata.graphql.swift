// @generated
// This file was automatically generated and should not be edited.

import Apollo

public typealias ID = String

public protocol SelectionSet: Apollo.SelectionSet & Apollo.RootSelectionSet
where Schema == SchemaMetadata {}

public protocol InlineFragment: Apollo.SelectionSet & Apollo.InlineFragment
where Schema == SchemaMetadata {}

public protocol MutableSelectionSet: Apollo.MutableRootSelectionSet
where Schema == SchemaMetadata {}

public protocol MutableInlineFragment: Apollo.MutableSelectionSet & Apollo.InlineFragment
where Schema == SchemaMetadata {}

public enum SchemaMetadata: Apollo.SchemaMetadata {
  public static let configuration: Apollo.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> Object? {
    switch typename {
    case "Query": return Objects.Query
    case "Book": return Objects.Book
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
