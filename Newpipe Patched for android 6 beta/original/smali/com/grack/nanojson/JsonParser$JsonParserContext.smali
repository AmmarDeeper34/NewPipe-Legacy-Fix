.class public final Lcom/grack/nanojson/JsonParser$JsonParserContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonParserContext"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private lazyNumbers:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public from(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 0
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/InputStream;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 0
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
