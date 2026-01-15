.class public final Lorg/schabi/newpipe/about/StandardLicenses;
.super Ljava/lang/Object;
.source "StandardLicenses.kt"


# static fields
.field public static final APACHE2:Lorg/schabi/newpipe/about/License;

.field public static final EPL1:Lorg/schabi/newpipe/about/License;

.field public static final GPL3:Lorg/schabi/newpipe/about/License;

.field public static final INSTANCE:Lorg/schabi/newpipe/about/StandardLicenses;

.field public static final MIT:Lorg/schabi/newpipe/about/License;

.field public static final MPL2:Lorg/schabi/newpipe/about/License;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/schabi/newpipe/about/StandardLicenses;

    invoke-direct {v0}, Lorg/schabi/newpipe/about/StandardLicenses;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->INSTANCE:Lorg/schabi/newpipe/about/StandardLicenses;

    .line 8
    new-instance v0, Lorg/schabi/newpipe/about/License;

    const-string v1, "GPLv3"

    const-string v2, "gpl_3.html"

    const-string v3, "GNU General Public License, Version 3.0"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/about/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->GPL3:Lorg/schabi/newpipe/about/License;

    .line 11
    new-instance v0, Lorg/schabi/newpipe/about/License;

    const-string v1, "ALv2"

    const-string v2, "apache2.html"

    const-string v3, "Apache License, Version 2.0"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/about/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->APACHE2:Lorg/schabi/newpipe/about/License;

    .line 14
    new-instance v0, Lorg/schabi/newpipe/about/License;

    const-string v1, "MPL 2.0"

    const-string v2, "mpl2.html"

    const-string v3, "Mozilla Public License, Version 2.0"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/about/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->MPL2:Lorg/schabi/newpipe/about/License;

    .line 17
    new-instance v0, Lorg/schabi/newpipe/about/License;

    const-string v1, "MIT"

    const-string v2, "mit.html"

    const-string v3, "MIT License"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/about/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->MIT:Lorg/schabi/newpipe/about/License;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/about/License;

    const-string v1, "EPL 1.0"

    const-string v2, "epl1.html"

    const-string v3, "Eclipse Public License, Version 1.0"

    invoke-direct {v0, v3, v1, v2}, Lorg/schabi/newpipe/about/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/about/StandardLicenses;->EPL1:Lorg/schabi/newpipe/about/License;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
