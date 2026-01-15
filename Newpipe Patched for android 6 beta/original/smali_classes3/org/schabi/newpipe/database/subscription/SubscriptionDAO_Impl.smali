.class public final Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;
.super Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;
.source "SubscriptionDAO_Impl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deleteAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

.field private final __insertAdapterOfSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

.field private final __insertAdapterOfSubscriptionEntity_1:Landroidx/room/EntityInsertAdapter;

.field private final __updateAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;


# direct methods
.method public static synthetic $r8$lambda$1BQoNYsTxwWAa2XDI1ViTt0pjNA(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1jbzgj6RgLzJ1S9zZIus1tDHfQs(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscriptionsFiltered$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2LT5agwm9UhbJdYizfLsmJuzZwk(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->upsertAll$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C_zPhd7lQ7d-Va4XBou5cdOXHjY(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscriptionIdInternal$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EVyxu6Vcr3j73FlBJGuzAah3XhQ(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscriptionFlowable$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G0hc-dFHBy-Qfi_d08MRCoYWrmg(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscriptionsOnlyUngrouped$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HOisJetyHVpNo0_ZvXRyQ16ZyVw(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->delete$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ispRSIrhgp5DkUQKTYyH6Fb1MPk(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->deleteSubscription$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mb_EjvXhZFQeNRudzKKieOW4NKE(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscription$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mr0PiWh44Csp_oXtZCyyUmvnH1g(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->insert$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$qaoxNfFeQwYj78qaiGS2rtVB_b0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscription$lambda$1(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ryFMikLrsQMDwxNdnybV_1FEAl0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tqVoKoxfDn1_tFg5ptPEv3rI7II(Ljava/lang/String;JLjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->getSubscriptionsOnlyUngroupedFiltered$lambda$0(Ljava/lang/String;JLjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w8xGbv90BDeD_YvidCVqCPKV3CM(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->silentInsertAllInternal$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->Companion:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance p1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$1;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$1;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

    .line 82
    new-instance p1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$2;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$2;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity_1:Landroidx/room/EntityInsertAdapter;

    .line 123
    new-instance p1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$3;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$3;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__deleteAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    .line 131
    new-instance p1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$4;

    invoke-direct {p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$4;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__updateAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    return-void
.end method

.method private static final delete$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__deleteAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    .line 198
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final deleteSubscription$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)I
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 846
    :try_start_0
    invoke-interface {p0, v0, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long v0, p2

    .line 848
    invoke-interface {p0, p1, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 849
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 850
    invoke-static {p3}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getAll$lambda$0(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 220
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 222
    :try_start_0
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 223
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 224
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 225
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 226
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 227
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 228
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 229
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 230
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 234
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 236
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 238
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v15, v11

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 244
    :goto_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v16, v11

    goto :goto_2

    .line 247
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 250
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v17, v11

    goto :goto_3

    .line 253
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 256
    :goto_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v18, v11

    goto :goto_4

    .line 259
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 262
    :goto_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_5
    move-object/from16 v19, v11

    goto :goto_6

    .line 265
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 268
    :goto_6
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 270
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 271
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 275
    :cond_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getSubscription$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 21

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 672
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    .line 675
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v0, 0x2

    move/from16 v2, p2

    int-to-long v2, v2

    .line 677
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 678
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 679
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 680
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 681
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 682
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 683
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 684
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 685
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 687
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_5

    .line 689
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 691
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    .line 693
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v15, v10

    goto :goto_0

    .line 696
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 699
    :goto_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v16, v10

    goto :goto_1

    .line 702
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 705
    :goto_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v17, v10

    goto :goto_2

    .line 708
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 711
    :goto_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v18, v10

    goto :goto_3

    .line 714
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v18, v0

    .line 717
    :goto_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    move-object/from16 v19, v10

    goto :goto_5

    .line 720
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 723
    :goto_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 725
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move/from16 v20, v0

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v11

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 731
    :cond_5
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v10

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getSubscription$lambda$1(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 20

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 739
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 742
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 743
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 744
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 745
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 746
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 747
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 748
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 749
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 750
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 752
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 754
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    .line 756
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v13, v9

    .line 758
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v14, v2

    goto :goto_0

    .line 761
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 764
    :goto_0
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v15, v2

    goto :goto_1

    .line 767
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 770
    :goto_1
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v16, v2

    goto :goto_2

    .line 773
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 776
    :goto_2
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v17, v2

    goto :goto_3

    .line 779
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v17, v0

    .line 782
    :goto_3
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    move-object/from16 v18, v2

    goto :goto_5

    .line 785
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 788
    :goto_5
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 790
    new-instance v10, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move/from16 v19, v0

    invoke-direct/range {v10 .. v19}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 789
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 792
    const-string v2, "The query result was empty, but expected a single row to return a NON-NULL object of type <org.schabi.newpipe.database.subscription.SubscriptionEntity>."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    :goto_6
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getSubscriptionFlowable$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 605
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    .line 608
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 v0, 0x2

    move/from16 v2, p2

    int-to-long v2, v2

    .line 610
    invoke-interface {v1, v0, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 611
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 612
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 613
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 614
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 615
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 616
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 617
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 618
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 619
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 620
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 623
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 625
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 627
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v15, v11

    goto :goto_1

    .line 630
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 633
    :goto_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v16, v11

    goto :goto_2

    .line 636
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 639
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v17, v11

    goto :goto_3

    .line 642
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 645
    :goto_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v18, v11

    goto :goto_4

    .line 648
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 651
    :goto_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_5
    move-object/from16 v19, v11

    goto :goto_6

    .line 654
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 657
    :goto_6
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 659
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 660
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 664
    :cond_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getSubscriptionIdInternal$lambda$0(Ljava/lang/String;Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 807
    :try_start_0
    invoke-interface {p0, p3, p1}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long p2, p2

    .line 809
    invoke-interface {p0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 811
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 812
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 822
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getSubscriptionsFiltered$lambda$0(Ljava/lang/String;Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 21

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 380
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    .line 383
    :try_start_0
    invoke-interface {v1, v0, v2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 384
    const-string v0, "uid"

    invoke-static {v1, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    .line 385
    const-string v2, "service_id"

    invoke-static {v1, v2}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v2

    .line 386
    const-string v3, "url"

    invoke-static {v1, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    .line 387
    const-string v4, "name"

    invoke-static {v1, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    .line 388
    const-string v5, "avatar_url"

    invoke-static {v1, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    .line 389
    const-string v6, "subscriber_count"

    invoke-static {v1, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    .line 390
    const-string v7, "description"

    invoke-static {v1, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    .line 391
    const-string v8, "notification_mode"

    invoke-static {v1, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    .line 392
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 393
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 396
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    .line 398
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    .line 400
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object v15, v11

    goto :goto_1

    .line 403
    :cond_0
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    .line 406
    :goto_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v16, v11

    goto :goto_2

    .line 409
    :cond_1
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    .line 412
    :goto_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v17, v11

    goto :goto_3

    .line 415
    :cond_2
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v10

    .line 418
    :goto_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v18, v11

    goto :goto_4

    .line 421
    :cond_3
    invoke-interface {v1, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v18, v10

    .line 424
    :goto_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_5
    move-object/from16 v19, v11

    goto :goto_6

    .line 427
    :cond_4
    invoke-interface {v1, v7}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 430
    :goto_6
    invoke-interface {v1, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v11, v10

    move/from16 v20, v11

    .line 432
    new-instance v11, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v11 .. v20}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 433
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 437
    :cond_5
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object v9

    :goto_7
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method private static final getSubscriptionsOnlyUngrouped$lambda$0(Ljava/lang/String;JLandroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-interface {p3, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p3, 0x1

    .line 461
    :try_start_0
    invoke-interface {p0, p3, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 470
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 474
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    .line 476
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 p2, 0x2

    .line 478
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move-object p2, v4

    goto :goto_1

    .line 481
    :cond_0
    invoke-interface {p0, p2}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v0, 0x3

    .line 484
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    goto :goto_2

    .line 487
    :cond_1
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_2
    const/4 v0, 0x4

    .line 490
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    goto :goto_3

    .line 493
    :cond_2
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_3
    const/4 v0, 0x5

    .line 496
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    goto :goto_4

    .line 499
    :cond_3
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    :goto_4
    const/4 v0, 0x6

    .line 502
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    move-object v8, v4

    goto :goto_6

    .line 505
    :cond_4
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :goto_6
    const/4 v0, 0x7

    .line 508
    invoke-interface {p0, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 510
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 511
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    .line 515
    :cond_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p1

    :goto_7
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final getSubscriptionsOnlyUngroupedFiltered$lambda$0(Ljava/lang/String;JLjava/lang/String;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-interface {p4, p0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p0

    const/4 p4, 0x1

    .line 540
    :try_start_0
    invoke-interface {p0, p4, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 542
    invoke-interface {p0, p1, p3}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 551
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 555
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    .line 557
    invoke-interface {p0, p4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 559
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v4, v0

    goto :goto_1

    .line 562
    :cond_0
    invoke-interface {p0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p3

    move-object v4, p3

    :goto_1
    const/4 p3, 0x3

    .line 565
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    goto :goto_2

    .line 568
    :cond_1
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    :goto_2
    const/4 p3, 0x4

    .line 571
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    goto :goto_3

    .line 574
    :cond_2
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    :goto_3
    const/4 p3, 0x5

    .line 577
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v0

    goto :goto_4

    .line 580
    :cond_3
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    move-object v7, p3

    :goto_4
    const/4 p3, 0x6

    .line 583
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    move-object v8, v0

    goto :goto_6

    .line 586
    :cond_4
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_6
    const/4 p3, 0x7

    .line 589
    invoke-interface {p0, p3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    .line 591
    new-instance v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V

    .line 592
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_7

    .line 596
    :cond_5
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-object p2

    :goto_7
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->close()V

    throw p1
.end method

.method private static final insert$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final silentInsertAllInternal$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__insertAdapterOfSubscriptionEntity_1:Landroidx/room/EntityInsertAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityInsertAdapter;->insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final update$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Landroidx/sqlite/SQLiteConnection;)I
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__updateAdapterOfSubscriptionEntity:Landroidx/room/EntityDeleteOrUpdateAdapter;

    invoke-virtual {p0, p2, p1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final upsertAll$lambda$0(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/util/List;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-super {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO;->upsertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->delete(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    return-void
.end method

.method public delete(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public deleteSubscription(ILjava/lang/String;)I
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;

    const-string v2, "DELETE FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    invoke-direct {v1, v2, p2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public getAll()Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 219
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda3;

    const-string v3, "SELECT * FROM subscriptions ORDER BY name COLLATE NOCASE ASC"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Maybe;
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda1;

    const-string v2, "SELECT * FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    invoke-direct {v1, v2, p2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/rxjava3/RxRoom;->createMaybe(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    return-object p1
.end method

.method public getSubscription(J)Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;
    .locals 3

    .line 738
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda4;

    const-string v2, "SELECT * FROM subscriptions WHERE uid = ?"

    invoke-direct {v1, v2, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    return-object p1
.end method

.method public getSubscriptionFlowable(ILjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda0;

    const-string v3, "SELECT * FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    invoke-direct {v2, v3, p2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionIdInternal$app_release(ILjava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda13;

    const-string v2, "SELECT uid FROM subscriptions WHERE url LIKE ? AND service_id = ?"

    invoke-direct {v1, v2, p2, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getSubscriptionsFiltered(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda5;

    const-string v3, "\n        SELECT * FROM subscriptions\n\n        WHERE name LIKE \'%\' || ? || \'%\'\n\n        ORDER BY name COLLATE NOCASE ASC\n        "

    invoke-direct {v2, v3, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionsOnlyUngrouped(J)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    .line 456
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    const-string v2, "feed_group_subscription_join"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda6;

    const-string v3, "SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n\n        ORDER BY name COLLATE NOCASE ASC\n        )"

    invoke-direct {v2, v3, p1, p2}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionsOnlyUngroupedFiltered(JLjava/lang/String;)Lio/reactivex/rxjava3/core/Flowable;
    .locals 4

    const-string v0, "filter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "subscriptions"

    const-string v2, "feed_group_subscription_join"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda7;

    const-string v3, "SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n        AND s.name LIKE \'%\' || ? || \'%\'\n\n        ORDER BY name COLLATE NOCASE ASC\n        )"

    invoke-direct {v2, v3, p1, p2, p3}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1, v2}, Landroidx/room/rxjava3/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 26
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->insert(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)J
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public silentInsertAllInternal$app_release(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)I

    move-result p1

    return p1
.end method

.method public update(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)I
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public upsertAll(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "entities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
