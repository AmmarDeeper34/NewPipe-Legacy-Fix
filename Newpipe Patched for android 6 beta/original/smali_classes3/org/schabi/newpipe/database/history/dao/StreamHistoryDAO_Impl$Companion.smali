.class public final Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;
.super Ljava/lang/Object;
.source "StreamHistoryDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/database/history/dao/StreamHistoryDAO_Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequiredConverters()Ljava/util/List;
    .locals 1

    .line 606
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
