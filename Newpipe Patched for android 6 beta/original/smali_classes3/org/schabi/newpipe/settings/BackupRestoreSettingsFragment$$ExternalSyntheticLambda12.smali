.class public final synthetic Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    iput-boolean p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iput-object p4, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    iget-boolean v1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$1:Z

    iget-object v2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$2:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v3, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$3:Landroid/net/Uri;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$lambda$dcJ-B_yo4JlXPOWLvfD6KrEQi_U(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method
