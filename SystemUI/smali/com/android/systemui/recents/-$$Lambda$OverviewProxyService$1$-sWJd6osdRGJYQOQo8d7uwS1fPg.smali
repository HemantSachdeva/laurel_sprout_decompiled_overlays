.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$-sWJd6osdRGJYQOQo8d7uwS1fPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$-sWJd6osdRGJYQOQo8d7uwS1fPg;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$-sWJd6osdRGJYQOQo8d7uwS1fPg;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$-sWJd6osdRGJYQOQo8d7uwS1fPg;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$-sWJd6osdRGJYQOQo8d7uwS1fPg;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Ldagger/Lazy;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$4$OverviewProxyService$1(Landroid/view/MotionEvent;Ldagger/Lazy;)V

    return-void
.end method
