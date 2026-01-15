.class public final Lorg/schabi/newpipe/database/Migrations;
.super Ljava/lang/Object;
.source "Migrations.kt"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/database/Migrations;

.field private static final MIGRATION_1_2:Landroidx/room/migration/Migration;

.field private static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field private static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field private static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field private static final MIGRATION_5_6:Landroidx/room/migration/Migration;

.field private static final MIGRATION_6_7:Landroidx/room/migration/Migration;

.field private static final MIGRATION_7_8:Landroidx/room/migration/Migration;

.field private static final MIGRATION_8_9:Landroidx/room/migration/Migration;

.field private static final TAG:Ljava/lang/String;

.field private static final isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/database/Migrations;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->INSTANCE:Lorg/schabi/newpipe/database/Migrations;

    .line 34
    const-class v0, Lorg/schabi/newpipe/database/Migrations;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->TAG:Ljava/lang/String;

    .line 35
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/database/Migrations;->isDebug:Z

    .line 37
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_1_2$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_1_2$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    .line 154
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_2_3$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_2_3$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 226
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_3_4$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_3_4$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 232
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_4_5$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_4_5$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    .line 241
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_5_6$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_5_6$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    .line 250
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_6_7$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_6_7$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    .line 295
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_7_8$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_7_8$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    .line 305
    new-instance v0, Lorg/schabi/newpipe/database/Migrations$MIGRATION_8_9$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/database/Migrations$MIGRATION_8_9$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isDebug$p()Z
    .locals 1

    .line 14
    sget-boolean v0, Lorg/schabi/newpipe/database/Migrations;->isDebug:Z

    return v0
.end method


# virtual methods
.method public final getMIGRATION_1_2()Landroidx/room/migration/Migration;
    .locals 1

    .line 37
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_1_2:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_2_3()Landroidx/room/migration/Migration;
    .locals 1

    .line 154
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_3_4()Landroidx/room/migration/Migration;
    .locals 1

    .line 226
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_4_5()Landroidx/room/migration/Migration;
    .locals 1

    .line 232
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_5_6()Landroidx/room/migration/Migration;
    .locals 1

    .line 241
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_5_6:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_6_7()Landroidx/room/migration/Migration;
    .locals 1

    .line 250
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_6_7:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_7_8()Landroidx/room/migration/Migration;
    .locals 1

    .line 295
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_7_8:Landroidx/room/migration/Migration;

    return-object v0
.end method

.method public final getMIGRATION_8_9()Landroidx/room/migration/Migration;
    .locals 1

    .line 305
    sget-object v0, Lorg/schabi/newpipe/database/Migrations;->MIGRATION_8_9:Landroidx/room/migration/Migration;

    return-object v0
.end method
