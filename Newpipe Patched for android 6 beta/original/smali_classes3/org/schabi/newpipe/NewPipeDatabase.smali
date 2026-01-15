.class public final Lorg/schabi/newpipe/NewPipeDatabase;
.super Ljava/lang/Object;
.source "NewPipeDatabase.kt"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/NewPipeDatabase;

.field private static volatile databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/NewPipeDatabase;

    invoke-direct {v0}, Lorg/schabi/newpipe/NewPipeDatabase;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/NewPipeDatabase;->INSTANCE:Lorg/schabi/newpipe/NewPipeDatabase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkpoint()V
    .locals 3

    .line 62
    sget-object v0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    if-eqz v0, :cond_2

    .line 63
    sget-object v0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "pragma wal_checkpoint(full)"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Checkpoint was blocked from completing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final close()V
    .locals 2

    .line 71
    sget-object v0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    if-eqz v0, :cond_1

    .line 72
    const-class v0, Lorg/schabi/newpipe/NewPipeDatabase;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->close()V

    const/4 v1, 0x0

    .line 75
    sput-object v1, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    return-void
.end method

.method private final getDatabase(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;
    .locals 10

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-class v0, Lorg/schabi/newpipe/database/AppDatabase;

    .line 31
    const-string v1, "newpipe.db"

    .line 28
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 33
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->INSTANCE:Lorg/schabi/newpipe/database/Migrations;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_1_2()Landroidx/room/migration/Migration;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_2_3()Landroidx/room/migration/Migration;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_3_4()Landroidx/room/migration/Migration;

    move-result-object v3

    .line 36
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_4_5()Landroidx/room/migration/Migration;

    move-result-object v4

    .line 37
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_5_6()Landroidx/room/migration/Migration;

    move-result-object v5

    .line 38
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_6_7()Landroidx/room/migration/Migration;

    move-result-object v6

    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_7_8()Landroidx/room/migration/Migration;

    move-result-object v7

    .line 40
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/Migrations;->getMIGRATION_8_9()Landroidx/room/migration/Migration;

    move-result-object v0

    const/16 v8, 0x8

    new-array v8, v8, [Landroidx/room/migration/Migration;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    const/4 v1, 0x7

    aput-object v0, v8, v1

    .line 32
    invoke-virtual {p1, v8}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/AppDatabase;

    return-object p1
.end method

.method public static final getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lorg/schabi/newpipe/NewPipeDatabase;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lorg/schabi/newpipe/NewPipeDatabase;->INSTANCE:Lorg/schabi/newpipe/NewPipeDatabase;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/NewPipeDatabase;->getDatabase(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p0

    sput-object p0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    .line 52
    sget-object p0, Lorg/schabi/newpipe/NewPipeDatabase;->databaseInstance:Lorg/schabi/newpipe/database/AppDatabase;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v1

    .line 54
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    move-object v0, p0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 57
    :cond_1
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
