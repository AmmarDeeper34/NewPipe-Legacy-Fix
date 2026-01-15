.class public final Lorg/schabi/newpipe/database/Migrations$MIGRATION_2_3$1;
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

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 154
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const-string v0, "CREATE TABLE IF NOT EXISTS streams_new (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, service_id INTEGER NOT NULL, url TEXT NOT NULL, title TEXT NOT NULL, stream_type TEXT NOT NULL, duration INTEGER NOT NULL, uploader TEXT NOT NULL, thumbnail_url TEXT, view_count INTEGER, textual_upload_date TEXT, upload_date INTEGER, is_upload_date_approximation INTEGER)"

    .line 157
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "INSERT INTO streams_new (uid, service_id, url, title, stream_type, duration, uploader, thumbnail_url, view_count, textual_upload_date, upload_date, is_upload_date_approximation) SELECT uid, service_id, url, ifnull(title, \'\'), ifnull(stream_type, \'VIDEO_STREAM\'), ifnull(duration, 0), ifnull(uploader, \'\'), ifnull(thumbnail_url, \'\'), NULL, NULL, NULL, NULL FROM streams WHERE url IS NOT NULL"

    .line 167
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP TABLE streams"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "ALTER TABLE streams_new RENAME TO streams"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "CREATE UNIQUE INDEX index_streams_service_id_url ON streams (service_id, url)"

    .line 181
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v0, "CREATE TABLE IF NOT EXISTS feed (stream_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(stream_id, subscription_id), FOREIGN KEY(stream_id) REFERENCES streams(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 187
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v0, "CREATE INDEX index_feed_subscription_id ON feed (subscription_id)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "CREATE TABLE IF NOT EXISTS feed_group (uid INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT NOT NULL, icon_id INTEGER NOT NULL, sort_order INTEGER NOT NULL)"

    .line 197
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v0, "CREATE INDEX index_feed_group_sort_order ON feed_group (sort_order)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v0, "CREATE TABLE IF NOT EXISTS feed_group_subscription_join (group_id INTEGER NOT NULL, subscription_id INTEGER NOT NULL, PRIMARY KEY(group_id, subscription_id), FOREIGN KEY(group_id) REFERENCES feed_group(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED, FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 203
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    const-string v0, "CREATE INDEX index_feed_group_subscription_join_subscription_id ON feed_group_subscription_join (subscription_id)"

    .line 212
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    const-string v0, "CREATE TABLE IF NOT EXISTS feed_last_updated (subscription_id INTEGER NOT NULL, last_updated INTEGER, PRIMARY KEY(subscription_id), FOREIGN KEY(subscription_id) REFERENCES subscriptions(uid) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED)"

    .line 216
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
