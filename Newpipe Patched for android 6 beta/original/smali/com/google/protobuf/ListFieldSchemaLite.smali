.class final Lcom/google/protobuf/ListFieldSchemaLite;
.super Ljava/lang/Object;
.source "ListFieldSchemaLite.java"

# interfaces
.implements Lcom/google/protobuf/ListFieldSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public makeImmutableListAt(Ljava/lang/Object;J)V
    .locals 0

    .line 33
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    const/4 p1, 0x0

    .line 34
    throw p1
.end method

.method public mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 0

    .line 39
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    .line 40
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/google/protobuf/Internal$ProtobufList;

    const/4 p1, 0x0

    .line 42
    throw p1
.end method
