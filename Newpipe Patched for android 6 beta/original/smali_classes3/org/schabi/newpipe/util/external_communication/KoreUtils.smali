.class public abstract Lorg/schabi/newpipe/util/external_communication/KoreUtils;
.super Ljava/lang/Object;
.source "KoreUtils.java"


# direct methods
.method public static synthetic $r8$lambda$9N8J1par3AI0PEzUUYe75a_73Lo(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-static {p0}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->installKore(Landroid/content/Context;)V

    return-void
.end method

.method public static installKore(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f12021a

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isServiceSupportedByKore(I)Z
    .locals 1

    .line 25
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    .line 26
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static playWithKore(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f12021a

    .line 59
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 63
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->tryOpenIntentInApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120219

    .line 65
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/external_communication/KoreUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/external_communication/KoreUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120212

    .line 66
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f120070

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public static shouldShowPlayWithKodi(Landroid/content/Context;I)Z
    .locals 2

    .line 31
    invoke-static {p1}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->isServiceSupportedByKore(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v1, 0x7f120445

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
