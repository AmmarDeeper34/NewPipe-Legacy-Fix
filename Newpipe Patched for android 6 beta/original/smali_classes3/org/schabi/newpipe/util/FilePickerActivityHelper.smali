.class public Lorg/schabi/newpipe/util/FilePickerActivityHelper;
.super Lcom/nononsenseapps/filepicker/FilePickerActivity;
.source "FilePickerActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;
    }
.end annotation


# instance fields
.field private currentFragment:Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;-><init>()V

    return-void
.end method

.method public static isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getFragment(Ljava/lang/String;IZZZZ)Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;
    .locals 7

    .line 65
    new-instance v0, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    goto :goto_1

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 66
    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->setArgs(Ljava/lang/String;IZZZZ)V

    .line 69
    iput-object v0, p0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->currentFragment:Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->currentFragment:Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;->isBackTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->currentFragment:Lorg/schabi/newpipe/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->goUp()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->isLightThemeSelected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130172

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f130171

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 44
    :goto_0
    invoke-super {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
