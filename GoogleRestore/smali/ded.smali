.class public final synthetic Lded;
.super Ljava/lang/Object;

# interfaces
.implements Lbox;


# instance fields
.field private final a:Z

.field private final b:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lded;->a:Z

    iput-object p2, p0, Lded;->b:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)V
    .locals 3

    iget-boolean v0, p0, Lded;->a:Z

    iget-object v1, p0, Lded;->b:Landroid/content/BroadcastReceiver$PendingResult;

    sget v2, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:I

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbpi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbpi;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
