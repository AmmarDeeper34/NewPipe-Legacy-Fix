.class public final synthetic Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$lambda$nlXcz4PNafg3wASwGwJgDY1fQSQ(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;Landroid/content/DialogInterface;)V

    return-void
.end method
