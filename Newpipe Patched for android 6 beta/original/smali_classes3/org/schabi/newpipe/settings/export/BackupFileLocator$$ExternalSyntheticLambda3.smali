.class public final synthetic Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/export/BackupFileLocator;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/export/BackupFileLocator$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->$r8$lambda$XwyWV7llUAHQbbk2VUFJl_itdhs(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
