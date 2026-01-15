.class public Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KioskTab"
.end annotation


# instance fields
.field private kioskId:Ljava/lang/String;

.field private kioskServiceId:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    .line 321
    const-string v1, "<no-id>"

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    .line 325
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    .line 326
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 374
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 377
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    .line 378
    invoke-super {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    iget v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;
    .locals 1

    .line 357
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    move-result-object p1

    return-object p1
.end method

.method public getKioskId()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    return-object v0
.end method

.method public getKioskServiceId()I
    .locals 1

    .line 389
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    return v0
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 2

    .line 346
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    invoke-static {p1}, Lorg/schabi/newpipe/util/KioskTranslator;->getKioskIcon(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kiosk ID is not valid: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/KioskTranslator;->getTranslatedKioskName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 385
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    .line 368
    const-string v0, "service_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    .line 369
    const-string v0, "kiosk_id"

    const-string v1, "<no-id>"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    return-void
.end method

.method protected writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 362
    const-string v0, "service_id"

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskServiceId:I

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "kiosk_id"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;->kioskId:Ljava/lang/String;

    .line 363
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method
