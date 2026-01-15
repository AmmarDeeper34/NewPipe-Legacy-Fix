.class Lorg/jsoup/helper/DataUtil$CharsetDoc;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/DataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetDoc"
.end annotation


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field doc:Lorg/jsoup/nodes/Document;

.field input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;Lorg/jsoup/nodes/Document;Ljava/io/InputStream;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->charset:Ljava/nio/charset/Charset;

    .line 218
    iput-object p3, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->input:Ljava/io/InputStream;

    .line 219
    iput-object p2, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->doc:Lorg/jsoup/nodes/Document;

    return-void
.end method
