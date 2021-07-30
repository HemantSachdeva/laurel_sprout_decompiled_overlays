.class public final synthetic Laes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laes;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Laes;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->setResult(I)V

    invoke-virtual {p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->finish()V

    return-void
.end method
