.class public final Lorg/schabi/newpipe/database/Migrations$MIGRATION_1_2$1;
.super Landroidx/room/migration/Migration;
.source "Migrations.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/database/Migrations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 37
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lorg/schabi/newpipe/database/Migrations;->access$isDebug$p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lorg/schabi/newpipe/database/Migrations;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start migrating database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const-string v0, "CREATE  INDEX `index_search_history_search` ON `search_history` (`search`)"

    .line 51
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `streams` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `url` TEXT, `title` TEXT, `stream_type` TEXT, `duration` INTEGER, `uploader` TEXT, `thumbnail_url` TEXT)"

    .line 55
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "CREATE UNIQUE INDEX `index_streams_service_id_url` ON `streams` (`service_id`, `url`)"

    .line 62
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "CREATE TABLE IF NOT EXISTS `stream_history` (`stream_id` INTEGER NOT NULL, `access_date` INTEGER NOT NULL, `repeat_count` INTEGER NOT NULL, PRIMARY KEY(`stream_id`, `access_date`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 66
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "CREATE  INDEX `index_stream_history_stream_id` ON `stream_history` (`stream_id`)"

    .line 73
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "CREATE TABLE IF NOT EXISTS `stream_state` (`stream_id` INTEGER NOT NULL, `progress_time` INTEGER NOT NULL, PRIMARY KEY(`stream_id`), FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 77
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "CREATE TABLE IF NOT EXISTS `playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `thumbnail_url` TEXT)"

    .line 83
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v0, "CREATE  INDEX `index_playlists_name` ON `playlists` (`name`)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "CREATE TABLE IF NOT EXISTS `playlist_stream_join` (`playlist_id` INTEGER NOT NULL, `stream_id` INTEGER NOT NULL, `join_index` INTEGER NOT NULL, PRIMARY KEY(`playlist_id`, `join_index`), FOREIGN KEY(`playlist_id`) REFERENCES `playlists`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(`stream_id`) REFERENCES `streams`(`uid`) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 89
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "CREATE UNIQUE INDEX `index_playlist_stream_join_playlist_id_join_index` ON `playlist_stream_join` (`playlist_id`, `join_index`)"

    .line 98
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE  INDEX `index_playlist_stream_join_stream_id` ON `playlist_stream_join` (`stream_id`)"

    .line 103
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE TABLE IF NOT EXISTS `remote_playlists` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `stream_count` INTEGER)"

    .line 107
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE  INDEX `index_remote_playlists_name` ON `remote_playlists` (`name`)"

    .line 113
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "CREATE UNIQUE INDEX `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)"

    .line 117
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "INSERT OR IGNORE INTO streams (service_id, url, title, stream_type, duration, uploader, thumbnail_url) SELECT service_id, url, title, \'VIDEO_STREAM\', duration, uploader, thumbnail_url FROM watch_history ORDER BY creation_date DESC"

    .line 124
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "INSERT INTO stream_history (stream_id, access_date, repeat_count)SELECT uid, creation_date, 1 FROM watch_history INNER JOIN streams ON watch_history.service_id == streams.service_id AND watch_history.url == streams.url ORDER BY creation_date DESC"

    .line 137
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "DROP TABLE IF EXISTS watch_history"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lorg/schabi/newpipe/database/Migrations;->access$isDebug$p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-static {}, Lorg/schabi/newpipe/database/Migrations;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stop migrating database"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
