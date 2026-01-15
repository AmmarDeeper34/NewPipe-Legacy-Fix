.class public Lorg/jsoup/nodes/Range$Position;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final pos:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    .line 144
    iput p2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    .line 145
    iput p3, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

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

    if-eqz p1, :cond_4

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range$Position;

    .line 196
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->pos:I

    if-eq v2, v3, :cond_2

    return v1

    .line 197
    :cond_2
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    iget v3, p1, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    if-eq v2, v3, :cond_3

    return v1

    .line 198
    :cond_3
    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    iget p1, p1, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 203
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
