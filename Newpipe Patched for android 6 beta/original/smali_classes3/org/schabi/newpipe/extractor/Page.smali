.class public Lorg/schabi/newpipe/extractor/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final body:[B

.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 33
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Page;->url:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/Page;->id:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/Page;->ids:Ljava/util/List;

    .line 28
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/Page;->cookies:Ljava/util/Map;

    .line 29
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/Page;->body:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 41
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 45
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 53
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;[B)V

    return-void
.end method

.method public static isValid(Lorg/schabi/newpipe/extractor/Page;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Page;->getIds()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Page;->body:[B

    return-object v0
.end method

.method public getCookies()Ljava/util/Map;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Page;->cookies:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Page;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Page;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Page;->url:Ljava/lang/String;

    return-object v0
.end method
