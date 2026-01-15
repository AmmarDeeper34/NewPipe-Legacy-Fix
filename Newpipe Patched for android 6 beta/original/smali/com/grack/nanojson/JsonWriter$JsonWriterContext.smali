.class public final Lcom/grack/nanojson/JsonWriter$JsonWriterContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonWriterContext"
.end annotation


# instance fields
.field private final indent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;->indent:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/grack/nanojson/JsonWriter$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public on(Ljava/io/OutputStream;)Lcom/grack/nanojson/JsonAppendableWriter;
    .locals 3

    .line 0
    new-instance v0, Lcom/grack/nanojson/JsonAppendableWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;->indent:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonAppendableWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method
