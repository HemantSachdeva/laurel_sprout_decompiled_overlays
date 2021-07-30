.class public final synthetic Laeq;
.super Ljava/lang/Object;

# interfaces
.implements Lfu;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laeq;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgu;)Lgu;
    .locals 1

    iget-object p1, p0, Laeq;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    iget-object p1, p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lgu;->b()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object p2
.end method
