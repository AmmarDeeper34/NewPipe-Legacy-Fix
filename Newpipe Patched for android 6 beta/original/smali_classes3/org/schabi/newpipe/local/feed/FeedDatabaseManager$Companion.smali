.class public final Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;
.super Ljava/lang/Object;
.source "FeedDatabaseManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFEED_OLDEST_ALLOWED_DATE()Lj$/time/OffsetDateTime;
    .locals 1

    .line 35
    invoke-static {}, Lorg/schabi/newpipe/local/feed/FeedDatabaseManager;->access$getFEED_OLDEST_ALLOWED_DATE$cp()Lj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method
