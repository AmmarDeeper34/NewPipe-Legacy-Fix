.class final Lorg/schabi/newpipe/util/SerializedCache$CacheData;
.super Ljava/lang/Object;
.source "SerializedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/util/SerializedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheData"
.end annotation


# instance fields
.field private final item:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;


# direct methods
.method static bridge synthetic -$$Nest$fgetitem(Lorg/schabi/newpipe/util/SerializedCache$CacheData;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->item:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/schabi/newpipe/util/SerializedCache$CacheData;)Ljava/lang/Class;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->type:Ljava/lang/Class;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->item:Ljava/lang/Object;

    .line 117
    iput-object p2, p0, Lorg/schabi/newpipe/util/SerializedCache$CacheData;->type:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lorg/schabi/newpipe/util/SerializedCache-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/util/SerializedCache$CacheData;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
