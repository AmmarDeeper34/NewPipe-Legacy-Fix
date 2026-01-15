.class public final Lorg/schabi/newpipe/database/Migrations$MIGRATION_8_9$1;
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

    const/16 v0, 0x8

    const/16 v1, 0x9

    .line 305
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    :try_start_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 313
    const-string v0, "CREATE TABLE `playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT, `is_thumbnail_permanent` INTEGER NOT NULL, `thumbnail_stream_id` INTEGER NOT NULL, `display_index` INTEGER NOT NULL)"

    .line 312
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    const-string v0, "INSERT INTO `playlists_tmp` (`uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, `display_index`) SELECT `uid`, `name`, `is_thumbnail_permanent`, `thumbnail_stream_id`, -1 FROM `playlists`"

    .line 319
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "DROP TABLE `playlists`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    const-string v0, "ALTER TABLE `playlists_tmp` RENAME TO `playlists`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const-string v0, "CREATE TABLE `remote_playlists_tmp` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `service_id` INTEGER NOT NULL, `name` TEXT, `url` TEXT, `thumbnail_url` TEXT, `uploader` TEXT, `display_index` INTEGER NOT NULL,`stream_count` INTEGER)"

    .line 335
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "INSERT INTO `remote_playlists_tmp` (`uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, `display_index`, `stream_count`)SELECT `uid`, `service_id`, `name`, `url`, `thumbnail_url`, `uploader`, -1, `stream_count` FROM `remote_playlists`"

    .line 343
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v0, "DROP TABLE `remote_playlists`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v0, "ALTER TABLE `remote_playlists_tmp` RENAME TO `remote_playlists`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    const-string v0, "CREATE UNIQUE INDEX `index_remote_playlists_service_id_url` ON `remote_playlists` (`service_id`, `url`)"

    .line 357
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 362
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0
.end method
