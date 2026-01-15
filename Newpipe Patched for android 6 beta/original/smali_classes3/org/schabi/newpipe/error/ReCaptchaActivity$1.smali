.class Lorg/schabi/newpipe/error/ReCaptchaActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ReCaptchaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/error/ReCaptchaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/error/ReCaptchaActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->-$$Nest$mhandleCookiesFromUrl(Lorg/schabi/newpipe/error/ReCaptchaActivity;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 91
    sget-boolean p1, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 92
    sget-object p1, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;->this$0:Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->-$$Nest$mhandleCookiesFromUrl(Lorg/schabi/newpipe/error/ReCaptchaActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
