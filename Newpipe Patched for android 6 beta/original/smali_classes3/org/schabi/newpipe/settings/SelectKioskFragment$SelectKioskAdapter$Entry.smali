.class Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;
.super Ljava/lang/Object;
.source "SelectKioskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field final icon:I

.field final kioskId:Ljava/lang/String;

.field final kioskName:Ljava/lang/String;

.field final serviceId:I

.field final synthetic this$1:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->this$1:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->icon:I

    .line 146
    iput p3, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->serviceId:I

    .line 147
    iput-object p4, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskId:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskName:Ljava/lang/String;

    return-void
.end method
