.class public Lorg/jsoup/nodes/Range$AttributeRange;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeRange"
.end annotation


# static fields
.field static final UntrackedAttr:Lorg/jsoup/nodes/Range$AttributeRange;


# instance fields
.field private final nameRange:Lorg/jsoup/nodes/Range;

.field private final valueRange:Lorg/jsoup/nodes/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 208
    new-instance v0, Lorg/jsoup/nodes/Range$AttributeRange;

    sget-object v1, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    invoke-direct {v0, v1, v1}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    sput-object v0, Lorg/jsoup/nodes/Range$AttributeRange;->UntrackedAttr:Lorg/jsoup/nodes/Range$AttributeRange;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 216
    iput-object p2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    return-void
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

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 246
    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    iget-object v2, p1, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 247
    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    iget-object p1, p1, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

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

.method public nameRange()Lorg/jsoup/nodes/Range;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
