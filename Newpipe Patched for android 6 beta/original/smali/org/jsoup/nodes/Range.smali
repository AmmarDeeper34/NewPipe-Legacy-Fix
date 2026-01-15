.class public Lorg/jsoup/nodes/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Range$Position;,
        Lorg/jsoup/nodes/Range$AttributeRange;
    }
.end annotation


# static fields
.field static final Untracked:Lorg/jsoup/nodes/Range;

.field private static final UntrackedPos:Lorg/jsoup/nodes/Range$Position;


# instance fields
.field private final end:Lorg/jsoup/nodes/Range$Position;

.field private final start:Lorg/jsoup/nodes/Range$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    sput-object v0, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    .line 21
    new-instance v1, Lorg/jsoup/nodes/Range;

    invoke-direct {v1, v0, v0}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    sput-object v1, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    .line 30
    iput-object p2, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    return-void
.end method

.method static of(Lorg/jsoup/nodes/Node;Z)Lorg/jsoup/nodes/Range;
    .locals 1

    if-eqz p1, :cond_0

    .line 96
    const-string p1, "jsoup.start"

    goto :goto_0

    :cond_0
    const-string p1, "jsoup.end"

    .line 97
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-object p0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 99
    check-cast p0, Lorg/jsoup/nodes/Range;

    return-object p0

    :cond_2
    sget-object p0, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range;

    .line 109
    iget-object v1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iget-object v2, p1, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 110
    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    iget-object p1, p1, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 115
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

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

.method public isTracked()Z
    .locals 1

    .line 72
    sget-object v0, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
