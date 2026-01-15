.class public Lorg/schabi/newpipe/error/ReCaptchaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReCaptchaActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private foundCookies:Ljava/lang/String;

.field private recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;


# direct methods
.method static bridge synthetic -$$Nest$mhandleCookiesFromUrl(Lorg/schabi/newpipe/error/ReCaptchaActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookiesFromUrl(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    return-void
.end method

.method private addCookie(Ljava/lang/String;)V
    .locals 3

    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    return-void

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    return-void

    .line 226
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    return-void
.end method

.method private addYoutubeCookies(Ljava/lang/String;)V
    .locals 1

    .line 212
    const-string v0, "s_gl="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "goojf="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VISITOR_INFO1_LIVE="

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GOOGLE_ABUSE_EXEMPTION="

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 216
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->addCookie(Ljava/lang/String;)V

    return-void
.end method

.method private handleCookies(Ljava/lang/String;)V
    .locals 3

    .line 199
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 200
    sget-object v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCookies: cookies="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 207
    :cond_2
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->addYoutubeCookies(Ljava/lang/String;)V

    return-void
.end method

.method private handleCookiesFromUrl(Ljava/lang/String;)V
    .locals 6

    .line 171
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 172
    sget-object v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCookiesFromUrl: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookies(Ljava/lang/String;)V

    .line 183
    const-string v0, "google_abuse="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 185
    const-string v1, "+path"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v0, 0xd

    .line 188
    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookies(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 190
    sget-boolean v3, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 191
    sget-object v3, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCookiesFromUrl: invalid google abuse starting at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and ending at "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for url "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static sanitizeRecaptchaUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "&pbj=1"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pbj=1&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "?pbj=1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1
    :goto_0
    const-string p0, "https://www.youtube.com"

    return-object p0
.end method

.method private saveCookiesAndFinish()V
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->handleCookiesFromUrl(Ljava/lang/String;)V

    .line 145
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCookiesAndFinish: foundCookies="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    invoke-static {}, Lorg/schabi/newpipe/DownloaderImpl;->getInstance()Lorg/schabi/newpipe/DownloaderImpl;

    move-result-object v0

    const-string v1, "recaptcha_cookies"

    iget-object v2, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->foundCookies:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/DownloaderImpl;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 162
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-static {p0, v0}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->saveCookiesAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-static {p0}, Lorg/schabi/newpipe/util/ThemeHelper;->setTheme(Landroid/content/Context;)V

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    .line 75
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "recaptcha_url_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->sanitizeRecaptchaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    new-instance v2, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity$1;-><init>(Lorg/schabi/newpipe/error/ReCaptchaActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 108
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 109
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 111
    iget-object v0, p0, Lorg/schabi/newpipe/error/ReCaptchaActivity;->recaptchaBinding:Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityRecaptchaBinding;->reCaptchaWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f12048e

    .line 121
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    const v0, 0x7f120477

    .line 122
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0237

    if-ne p1, v0, :cond_0

    .line 136
    invoke-direct {p0}, Lorg/schabi/newpipe/error/ReCaptchaActivity;->saveCookiesAndFinish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
