.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$3;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "StreamDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$3;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, "DELETE FROM `streams` WHERE `uid` = ?"

    return-object v0
.end method
