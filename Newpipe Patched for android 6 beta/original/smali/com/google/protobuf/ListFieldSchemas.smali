.class abstract Lcom/google/protobuf/ListFieldSchemas;
.super Ljava/lang/Object;
.source "ListFieldSchemas.java"


# static fields
.field private static final FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

.field private static final LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lcom/google/protobuf/ListFieldSchemas;->loadSchemaForFullRuntime()Lcom/google/protobuf/ListFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    .line 13
    new-instance v0, Lcom/google/protobuf/ListFieldSchemaLite;

    invoke-direct {v0}, Lcom/google/protobuf/ListFieldSchemaLite;-><init>()V

    sput-object v0, Lcom/google/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-void
.end method

.method static full()Lcom/google/protobuf/ListFieldSchema;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/protobuf/ListFieldSchemas;->FULL_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/ListFieldSchema;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/protobuf/ListFieldSchemas;->LITE_SCHEMA:Lcom/google/protobuf/ListFieldSchema;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/protobuf/ListFieldSchema;
    .locals 2

    .line 24
    sget-boolean v0, Lcom/google/protobuf/Android;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 28
    :cond_0
    :try_start_0
    const-string v0, "com.google.protobuf.ListFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ListFieldSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
