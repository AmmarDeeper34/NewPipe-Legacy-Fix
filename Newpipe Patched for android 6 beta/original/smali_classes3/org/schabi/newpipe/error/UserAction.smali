.class public final enum Lorg/schabi/newpipe/error/UserAction;
.super Ljava/lang/Enum;
.source "UserAction.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/error/UserAction;

.field public static final enum CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SEARCHED:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTIONS:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

.field public static final enum USER_REPORT:Lorg/schabi/newpipe/error/UserAction;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/error/UserAction;
    .locals 3

    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [Lorg/schabi/newpipe/error/UserAction;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->USER_REPORT:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTIONS:Lorg/schabi/newpipe/error/UserAction;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x0

    const-string v2, "user report"

    const-string v3, "USER_REPORT"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->USER_REPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 8
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x1

    const-string v2, "ui error"

    const-string v3, "UI_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->UI_ERROR:Lorg/schabi/newpipe/error/UserAction;

    .line 9
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x2

    const-string v2, "database import or export"

    const-string v3, "DATABASE_IMPORT_EXPORT"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 10
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x3

    const-string v2, "subscription change"

    const-string v3, "SUBSCRIPTION_CHANGE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    .line 11
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x4

    const-string v2, "subscription update"

    const-string v3, "SUBSCRIPTION_UPDATE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_UPDATE:Lorg/schabi/newpipe/error/UserAction;

    .line 12
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x5

    const-string v2, "get subscription"

    const-string v3, "SUBSCRIPTION_GET"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    .line 13
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x6

    const-string v2, "subscription import or export"

    const-string v3, "SUBSCRIPTION_IMPORT_EXPORT"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 14
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/4 v1, 0x7

    const-string v2, "load image"

    const-string v3, "LOAD_IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->LOAD_IMAGE:Lorg/schabi/newpipe/error/UserAction;

    .line 15
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x8

    const-string v2, "something else"

    const-string v3, "SOMETHING_ELSE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    .line 16
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x9

    const-string v2, "searched"

    const-string v3, "SEARCHED"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SEARCHED:Lorg/schabi/newpipe/error/UserAction;

    .line 17
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xa

    const-string v2, "get suggestions"

    const-string v3, "GET_SUGGESTIONS"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->GET_SUGGESTIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 18
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xb

    const-string v2, "requested stream"

    const-string v3, "REQUESTED_STREAM"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 19
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xc

    const-string v2, "requested channel"

    const-string v3, "REQUESTED_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xd

    const-string v2, "requested playlist"

    const-string v3, "REQUESTED_PLAYLIST"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_PLAYLIST:Lorg/schabi/newpipe/error/UserAction;

    .line 21
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xe

    const-string v2, "requested kiosk"

    const-string v3, "REQUESTED_KIOSK"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_KIOSK:Lorg/schabi/newpipe/error/UserAction;

    .line 22
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0xf

    const-string v2, "requested comments"

    const-string v3, "REQUESTED_COMMENTS"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENTS:Lorg/schabi/newpipe/error/UserAction;

    .line 23
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x10

    const-string v2, "requested comment replies"

    const-string v3, "REQUESTED_COMMENT_REPLIES"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_COMMENT_REPLIES:Lorg/schabi/newpipe/error/UserAction;

    .line 24
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x11

    const-string v2, "requested feed"

    const-string v3, "REQUESTED_FEED"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_FEED:Lorg/schabi/newpipe/error/UserAction;

    .line 25
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x12

    const-string v2, "bookmark"

    const-string v3, "REQUESTED_BOOKMARK"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_BOOKMARK:Lorg/schabi/newpipe/error/UserAction;

    .line 26
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x13

    const-string v2, "delete from history"

    const-string v3, "DELETE_FROM_HISTORY"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DELETE_FROM_HISTORY:Lorg/schabi/newpipe/error/UserAction;

    .line 27
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x14

    const-string v2, "play stream"

    const-string v3, "PLAY_STREAM"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->PLAY_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 28
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x15

    const-string v2, "download open dialog"

    const-string v3, "DOWNLOAD_OPEN_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 29
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x16

    const-string v2, "download post-processing"

    const-string v3, "DOWNLOAD_POSTPROCESSING"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_POSTPROCESSING:Lorg/schabi/newpipe/error/UserAction;

    .line 30
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x17

    const-string v2, "download failed"

    const-string v3, "DOWNLOAD_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    .line 31
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x18

    const-string v2, "new streams notifications"

    const-string v3, "NEW_STREAMS_NOTIFICATIONS"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->NEW_STREAMS_NOTIFICATIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 32
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x19

    const-string v2, "migration of preferences"

    const-string v3, "PREFERENCES_MIGRATION"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->PREFERENCES_MIGRATION:Lorg/schabi/newpipe/error/UserAction;

    .line 33
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1a

    const-string v2, "share to newpipe"

    const-string v3, "SHARE_TO_NEWPIPE"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    .line 34
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1b

    const-string v2, "check for new app version"

    const-string v3, "CHECK_FOR_NEW_APP_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->CHECK_FOR_NEW_APP_VERSION:Lorg/schabi/newpipe/error/UserAction;

    .line 35
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1c

    const-string v2, "open info item dialog"

    const-string v3, "OPEN_INFO_ITEM_DIALOG"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 36
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1d

    const-string v2, "getting main screen tab"

    const-string v3, "GETTING_MAIN_SCREEN_TAB"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->GETTING_MAIN_SCREEN_TAB:Lorg/schabi/newpipe/error/UserAction;

    .line 37
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1e

    const-string v2, "play on popup"

    const-string v3, "PLAY_ON_POPUP"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->PLAY_ON_POPUP:Lorg/schabi/newpipe/error/UserAction;

    .line 38
    new-instance v0, Lorg/schabi/newpipe/error/UserAction;

    const/16 v1, 0x1f

    const-string v2, "loading subscriptions"

    const-string v3, "SUBSCRIPTIONS"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/error/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTIONS:Lorg/schabi/newpipe/error/UserAction;

    .line 6
    invoke-static {}, Lorg/schabi/newpipe/error/UserAction;->$values()[Lorg/schabi/newpipe/error/UserAction;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/error/UserAction;->$VALUES:[Lorg/schabi/newpipe/error/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lorg/schabi/newpipe/error/UserAction;->message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/error/UserAction;
    .locals 1

    .line 6
    const-class v0, Lorg/schabi/newpipe/error/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/error/UserAction;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/error/UserAction;
    .locals 1

    .line 6
    sget-object v0, Lorg/schabi/newpipe/error/UserAction;->$VALUES:[Lorg/schabi/newpipe/error/UserAction;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/error/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/error/UserAction;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/error/UserAction;->message:Ljava/lang/String;

    return-object v0
.end method
