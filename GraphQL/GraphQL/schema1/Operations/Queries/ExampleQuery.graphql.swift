// @generated
// This file was automatically generated and should not be edited.

@_exported import Apollo

public class ExampleQuery: GraphQLQuery {
  public static let operationName: String = "ExampleQuery"
  public static let document: Apollo.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query ExampleQuery {
        books {
          __typename
          title
        }
      }
      """#
    ))

  public init() {}

  public struct Data: SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: Apollo.ParentType { Objects.Query }
    public static var __selections: [Apollo.Selection] { [
      .field("books", [Book?]?.self),
    ] }

    public var books: [Book?]? { __data["books"] }

    /// Book
    ///
    /// Parent Type: `Book`
    public struct Book: SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: Apollo.ParentType { Objects.Book }
      public static var __selections: [Apollo.Selection] { [
        .field("__typename", String.self),
        .field("title", String?.self),
      ] }

      public var title: String? { __data["title"] }
    }
  }
}
