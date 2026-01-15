.class public Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;
.super Ljava/lang/Object;
.source "NativeRegExpInstantiator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static withLanguageVersion(I)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 12
    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExpCallable;

    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/NativeRegExpCallable;-><init>()V

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    return-object p0
.end method

.method static withLanguageVersionScopeCompiled(ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 21
    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExpCallable;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExpCallable;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V

    return-object p0
.end method
