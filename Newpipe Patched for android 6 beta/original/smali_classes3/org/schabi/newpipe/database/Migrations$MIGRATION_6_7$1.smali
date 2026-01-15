.class public final Lorg/schabi/newpipe/database/Migrations$MIGRATION_6_7$1;
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

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 250
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    const-string v0, "ALTER TABLE `playlists` ADD COLUMN `thumbnail_stream_id` INTEGER NOT NULL DEFAULT -1"

    .line 253
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 260
    const-string v0, "UPDATE playlists SET thumbnail_stream_id = ( SELECT CASE WHEN COUNT(*) != 0 then stream_uid ELSE -1 END FROM ( SELECT p.uid AS playlist_uid, s.uid AS stream_uid FROM playlists p LEFT JOIN playlist_stream_join ps ON p.uid = ps.playlist_id LEFT JOIN streams s ON s.uid = ps.stream_id WHERE s.thumbnail_url = p.thumbnail_url) AS temporary_table WHERE playlist_uid = playlists.uid)"

    .line 259
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 273
    const-string v0, "CREATE TABLE IF NOT EXISTS `playlists_new`(uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, is_thumbnail_permanent INTEGER NOT NULL, thumbnail_stream_id INTEGER NOT NULL)"

    .line 272
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    const-string v0, "INSERT INTO playlists_new SELECT uid, name, is_thumbnail_permanent, thumbnail_stream_id  FROM playlists"

    .line 280
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v0, "DROP TABLE playlists"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v0, "ALTER TABLE playlists_new RENAME TO playlists"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 289
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_playlists_name` ON `playlists` (`name`)"

    .line 288
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
