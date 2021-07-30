.class Lcom/google/android/systemui/OpaLayout$3;
.super Landroid/content/BroadcastReceiver;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$3;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/google/android/systemui/OpaLayout$3;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/OpaLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method
