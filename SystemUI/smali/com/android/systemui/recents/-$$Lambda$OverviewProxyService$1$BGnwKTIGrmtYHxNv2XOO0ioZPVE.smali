.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Ldagger/Lazy;

.field public final synthetic f$2:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ldagger/Lazy;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$1:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$2:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$1:Ldagger/Lazy;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$BGnwKTIGrmtYHxNv2XOO0ioZPVE;->f$2:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$3$OverviewProxyService$1(Ldagger/Lazy;Landroid/view/MotionEvent;)V

    return-void
.end method
