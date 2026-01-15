.class Lorg/mozilla/javascript/ClassCache$CacheKey;
.super Ljava/lang/Object;
.source "ClassCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ClassCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheKey"
.end annotation


# instance fields
.field final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final sec:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->cls:Ljava/lang/Class;

    .line 42
    iput-object p2, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->sec:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 56
    instance-of v0, p1, Lorg/mozilla/javascript/ClassCache$CacheKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->cls:Ljava/lang/Class;

    check-cast p1, Lorg/mozilla/javascript/ClassCache$CacheKey;

    iget-object v1, p1, Lorg/mozilla/javascript/ClassCache$CacheKey;->cls:Ljava/lang/Class;

    .line 57
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->sec:Ljava/lang/Object;

    iget-object p1, p1, Lorg/mozilla/javascript/ClassCache$CacheKey;->sec:Ljava/lang/Object;

    .line 58
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->cls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 48
    iget-object v1, p0, Lorg/mozilla/javascript/ClassCache$CacheKey;->sec:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :cond_0
    return v0
.end method
