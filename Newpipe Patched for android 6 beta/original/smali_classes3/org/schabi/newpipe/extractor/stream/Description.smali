.class public Lorg/schabi/newpipe/extractor/stream/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;


# instance fields
.field private final content:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    .line 20
    const-string p2, ""

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 40
    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    iget v3, p1, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
