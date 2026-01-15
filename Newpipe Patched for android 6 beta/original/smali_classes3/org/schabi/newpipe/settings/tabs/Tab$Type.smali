.class public final enum Lorg/schabi/newpipe/settings/tabs/Tab$Type;
.super Ljava/lang/Enum;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum CHANNEL:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum FEEDGROUP:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum HISTORY:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum PLAYLIST:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

.field public static final enum SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;


# instance fields
.field private final tab:Lorg/schabi/newpipe/settings/tabs/Tab;


# direct methods
.method private static synthetic $values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 3

    const/16 v0, 0xa

    .line 158
    new-array v0, v0, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->HISTORY:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->CHANNEL:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->PLAYLIST:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEEDGROUP:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 159
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$BlankTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$BlankTab;-><init>()V

    const-string v2, "BLANK"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BLANK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 160
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;-><init>()V

    const-string v2, "DEFAULT_KIOSK"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->DEFAULT_KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 161
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$SubscriptionsTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$SubscriptionsTab;-><init>()V

    const-string v2, "SUBSCRIPTIONS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->SUBSCRIPTIONS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 162
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;-><init>()V

    const-string v2, "FEED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEED:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 163
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$BookmarksTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$BookmarksTab;-><init>()V

    const-string v2, "BOOKMARKS"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->BOOKMARKS:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 164
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$HistoryTab;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/tabs/Tab$HistoryTab;-><init>()V

    const-string v2, "HISTORY"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->HISTORY:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 165
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V

    const-string v3, "KIOSK"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->KIOSK:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 166
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V

    const-string v3, "CHANNEL"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->CHANNEL:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 167
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V

    const-string v3, "PLAYLIST"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->PLAYLIST:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 168
    new-instance v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    new-instance v1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V

    const-string v2, "FEEDGROUP"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;-><init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->FEEDGROUP:Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    .line 158
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->$values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->$VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/schabi/newpipe/settings/tabs/Tab;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 1

    .line 158
    const-class v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 1

    .line 158
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->$VALUES:[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    return-object v0
.end method


# virtual methods
.method public getTab()Lorg/schabi/newpipe/settings/tabs/Tab;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    return-object v0
.end method

.method public getTabId()I
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->tab:Lorg/schabi/newpipe/settings/tabs/Tab;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v0

    return v0
.end method
