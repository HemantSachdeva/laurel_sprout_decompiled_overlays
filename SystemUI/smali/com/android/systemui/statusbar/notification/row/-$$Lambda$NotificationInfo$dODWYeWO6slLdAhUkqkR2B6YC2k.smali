.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationInfo$dODWYeWO6slLdAhUkqkR2B6YC2k;->f$1:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->lambda$applyAlertingBehavior$8(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
