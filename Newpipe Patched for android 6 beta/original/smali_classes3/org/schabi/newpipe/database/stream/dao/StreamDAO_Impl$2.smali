.class public final Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;
.super Landroidx/room/EntityInsertAdapter;
.source "StreamDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 102
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p2, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;->bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V

    return-void
.end method

.method protected bind(Landroidx/sqlite/SQLiteStatement;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)V
    .locals 4

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x3

    .line 109
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 110
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    invoke-static {v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/Converters;->stringOf(Lorg/schabi/newpipe/extractor/stream/StreamType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 112
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v0, 0x6

    .line 113
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 114
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 117
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 121
    :goto_0
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_1

    .line 123
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 127
    :goto_1
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getViewCount()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_2

    .line 129
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    :goto_2
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_3

    .line 135
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 137
    :cond_3
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 139
    :goto_3
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploadDate()Lj$/time/OffsetDateTime;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl$2;->this$0:Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    invoke-static {v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->access$get__converters$p(Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;)Lorg/schabi/newpipe/database/Converters;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/database/Converters;->offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_4

    .line 142
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 144
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :goto_4
    invoke-virtual {p2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    :goto_5
    const/16 v0, 0xd

    if-nez p2, :cond_6

    .line 149
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void

    .line 151
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, "INSERT OR IGNORE INTO `streams` (`uid`,`service_id`,`url`,`title`,`stream_type`,`duration`,`uploader`,`uploader_url`,`thumbnail_url`,`view_count`,`textual_upload_date`,`upload_date`,`is_upload_date_approximation`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
