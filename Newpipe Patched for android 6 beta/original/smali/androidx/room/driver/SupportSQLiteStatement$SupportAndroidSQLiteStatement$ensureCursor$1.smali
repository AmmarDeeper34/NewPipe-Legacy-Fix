.class public final Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;
.super Ljava/lang/Object;
.source "SupportSQLiteStatement.android.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->ensureCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;


# direct methods
.method constructor <init>(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 6

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v0}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBindingTypes$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 297
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBindingTypes$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[I

    move-result-object v3

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 305
    :cond_1
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getBlobBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[[B

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    .line 303
    :cond_2
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getStringBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_3
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getDoubleBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[D

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 299
    :cond_4
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-static {v3}, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->access$getLongBindings$p(Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;)[J

    move-result-object v3

    aget-wide v4, v3, v2

    invoke-interface {p1, v2, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1;->this$0:Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/driver/SupportSQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
