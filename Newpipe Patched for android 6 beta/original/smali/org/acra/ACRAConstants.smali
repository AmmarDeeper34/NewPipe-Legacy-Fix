.class public final Lorg/acra/ACRAConstants;
.super Ljava/lang/Object;
.source "ACRAConstants.kt"


# static fields
.field public static final DEFAULT_REPORT_FIELDS:Ljava/util/List;

.field public static final INSTANCE:Lorg/acra/ACRAConstants;

.field public static final SILENT_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/acra/ACRAConstants;

    invoke-direct {v0}, Lorg/acra/ACRAConstants;-><init>()V

    sput-object v0, Lorg/acra/ACRAConstants;->INSTANCE:Lorg/acra/ACRAConstants;

    .line 38
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    const/16 v1, 0x1d

    .line 60
    new-array v1, v1, [Lorg/acra/ReportField;

    sget-object v2, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sget-object v0, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    .line 56
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
